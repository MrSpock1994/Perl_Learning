# Iterating over Hashes

use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {

    my %foods = (
        "cats" => "cheese",
        "dogs" => "meat",
        "birds" => "seeds",
    );

    while(my($key, $value)=each(%foods)) {
        print("$key likes $value.\n");
    }

    my @animals = keys(%foods);
    my @foods = values(%foods);


    #print(Dumper(@animals));
    #print(Dumper(@foods));

    foreach my $key(@animals) {
        my $value = $foods{$key};
        print("$key -> $value\n");
    }
}

main();