=Begin comment

https://perldoc.perl.org/perlthrtut

https://www.mkssoftware.com/docs/man5/perlthrtut.5.asp

This program uses the pipeline model to generate prime numbers. Each thread in the pipeline has an input 
queue that feeds numbers to be checked, a prime number that it's responsible for, and an output queue that 
it funnels numbers that have failed the check into. If the thread has a number that's failed its check and 
there's no child thread, then the thread must have found a new prime number. In that case, a new child 
thread is created for that prime and stuck on the end of the pipeline.

This probably sounds a bit more confusing than it really is, so lets go through this program piece by piece 
and see what it does. (For those of you who might be trying to remember exactly what a prime number is, it's 
a number that's only evenly divisible by itself and 1)

The bulk of the work is done by the check_num() subroutine, which takes a reference to its input queue and a 
prime number that it's responsible for. After pulling in the input queue and the prime that the subroutine's 
checking (line 20), we create a new queue (line 22) and reserve a scalar for the thread that we're likely to 
create later (line 21).

The while loop from lines 23 to line 31 grabs a scalar off the input queue and checks against the prime this 
thread is responsible for. Line 24 checks to see if there's a remainder when we modulo the number to be checked 
against our prime. If there is one, the number must not be evenly divisible by our prime, so we need to either 
pass it on to the next thread if we've created one (line 26) or create a new thread if we haven't.

The new thread creation is line 29. We pass on to it a reference to the queue we've created, and the prime 
number we've found.

Finally, once the loop terminates (because we got a 0 or undef in the queue, which serves as a note to die), 
we pass on the notice to our child and wait for it to exit if we've created a child (Lines 32 and 37).

Meanwhile, back in the main thread, we create a queue (line 9) and the initial child thread (line 10), and 
pre-seed it with the first prime: 2. Then we queue all the numbers from 3 to 1000 for checking (lines 12-14), 
then queue a die notice (line 16) and wait for the first child thread to terminate (line 17). Because a child 
won't die until its child has died, we know that we're done once we return from the join.

That's how it works. It's pretty simple; as with many Perl programs, the explanation is much longer than the 
program. 

=cut

#!/usr/bin/perl -w
# prime-pthread, courtesy of Tom Christiansen

use strict;

use Thread;
use Thread::Queue;

my $stream = new Thread::Queue;
my $kid    = new Thread(\&check_num, $stream, 2);

for my $i ( 3 .. 100 ) {
	$stream->enqueue($i);
    } 
$stream->enqueue(undef);
$kid->join();

sub check_num {
	my ($upstream, $cur_prime) = @_;
    my $kid;
    my $downstream = new Thread::Queue;
    while (my $num = $upstream->dequeue) {
    	next unless $num % $cur_prime;
    	if ($kid) {
    		$downstream->enqueue($num);
          } else {
                print "Found prime $num\n";
    	              $kid = new Thread(\&check_num, $downstream, $num);
             }
         } 
         $downstream->enqueue(undef) if $kid;
         $kid->join()		
         if $kid;
 }