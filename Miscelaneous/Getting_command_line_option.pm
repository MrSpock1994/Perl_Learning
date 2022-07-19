use strict;
use warnings;
use Data::Dumper;
use Getopt::Std;

sub main {
    my %opts;
    #print Dumper(@ARGV);
    getopts('af:c', \%opts);

    print Dumper(%opts);
    my $file = $opts{'f'};
    print("File: $file\n")
}

main();