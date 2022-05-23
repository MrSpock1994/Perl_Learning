# Spliting and reading CSV Files

use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main {
    
    my @animals = ('dog', 'cat', 'rabbit');
    my @fruits = ('apple', 'banana', 'orange');
    my @values;
    my $fruits_ref = \@fruits;
    print($fruits_ref->[2]);
    #creating arrays of arrays, we add the \ before
    push @values, \@animals;
    push @values, \@fruits;
    #print("@values\n");
    print Dumper(@values);
}

main();