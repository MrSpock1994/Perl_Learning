use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

=pod
    Using for adding comments, use with care
=cut

sub main {
    my %opts;
    # Get command line options
    getopts('af:c', \%opts);

    if(!checkusage("Hello", 7)) {
        usage();
    }
}

sub checkusage {
    #print Dumper(@_);
    my ($greetings, $number) = @_;
    print("$greetings number $number\n");
    return 1;
}

sub usage {
 
}
main();