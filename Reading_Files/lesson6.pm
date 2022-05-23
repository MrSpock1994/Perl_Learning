# Hashes

use strict;
use warnings;
use Data::Dumper;

$|=1;


sub main {
    my %months = (
        "Jan" => 1,
        "Dec" => 12,
        "Mar" => 3,
        "Jun" => 6,
    );
    
    print($months{"Jan"}."\n");

    my @months = keys %months;
    #print("@months\n")
    #print(Dumper(@months));

    foreach my $month(@months) {
        my $values = $months{$month};
        print("$month: $values\n");
    }
    while (my ($key,$value) = each %months){
        print("$key: $value\n");

    }
}

main();