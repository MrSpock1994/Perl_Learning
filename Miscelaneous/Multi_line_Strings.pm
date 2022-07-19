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

    if(!checkusage(\%opts)) {
        usage();
    }

    my $opts_ref = \%opts;

    # Use hash directly
    print($opts{"f"} . "\n");

    # Use reference to hash
    print($opts_ref->{"f"} . "\n");
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