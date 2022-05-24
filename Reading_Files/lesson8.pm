# Arrays of Hashes

use strict;
use warnings;
use Data::Dumper;

$| = 1;

sub main{


    my %hash1 = (
        "cats" => "cheese",
        "dogs" => "meat",
        "birds" => "seeds",
        "fish" => "worms",
    );

    my @test;
    push (@test, \%hash1);
    print(Dumper(@test));

    print(Dumper($test[0]{"fish"}));
}

main();