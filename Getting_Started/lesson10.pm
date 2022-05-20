# Numeric quantifiers

use strict;
use warnings;

$|=1;

sub main {


    my $text= 'DE75883';
    my $text2= 'Iam117yearsold tomorrow.';


    if($text =~ /(DE\d{5})/) {
        print "$1\n";
    }
    
}

main();
