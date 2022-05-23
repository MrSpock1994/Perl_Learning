# Spliting and reading CSV Files

use strict;
use warnings;
use Data::Dumper;

$|=1;

sub main {
    
    my $input = '/home/will/Coding/Perl_Main/Learning_Perl_02/Reading_Files/test.csv';

    unless(open(HANDLER, $input)) {
        die "\nCant open the $input"

        
    }

    # if my csv file had a header it would desconsired it
    #<HANDLER>;
    my @lines;
    my $count = 0;

    while(my $line = <HANDLER>) {
        
        #print("'$line'\n");
        #chomp $line;
        #print("'$line'\n");
        my @values = split(/\s*,\s*/, $line);

        #my $joined = join('|', @values);
        #print ("$joined\n");
        #print $values[2]."\n";

        #print Dumper(@values);
        #There is a easier way using push
        #$lines[$count] = $line;
        #$count++;

        push @lines, \@values;
    }

    close(HANDLER);

    foreach my $l(@lines) {
        print(Dumper($l));

    }
    print(Dumper($lines[3]));
}

main();