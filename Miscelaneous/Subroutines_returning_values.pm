use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

sub main {
    my %opts;

    getopts('af:c', \%opts);

    if(!checkusage()) {
        usage();
    }
}

sub checkusage {
    return 0;
}

sub usage {
    print("Incorrect option\n");
}
main();