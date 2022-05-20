# Escape sequence

use strict;
use warnings;

$|=1;

sub main {

    # \d digit
    # \s space
    # \S non-space
    # \w slphanumeric

    my $text= 'I am 117 years old tomorrow.';
    my $text2= 'Iam117yearsold tomorrow.';

    # matching am with the space and the digit
    if($text =~ /(am\s\d+)/) {
        print "$1\n";
    }
    # matching y with all non-space character
    if($text =~ /(y\S*)/) {
        print "$1\n";
    }
    # matching yalphanumeric and non-space
    if($text2 =~ /(\w\S*)/) {
        print "$1\n";
    }
    
}

main();