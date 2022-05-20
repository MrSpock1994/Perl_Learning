# Spliting and reading CSV Files

use strict;
use warnings;

$|=1;

sub main {
    
    my $input = '/home/will/Coding/Perl_Main/Learning_Perl_02/Reading_Files/test.csv';

    unless(open(HANDLER, $input)) {
        die "\nCant open the $input"

        
    }

    # if my csv file had a header it would desconsired it
    #<HANDLER>;

    while(my $line = <HANDLER>) {

        my @values = split(',', $line);


        print $values[2]."\n";
    }

    close(HANDLER);
}

main();