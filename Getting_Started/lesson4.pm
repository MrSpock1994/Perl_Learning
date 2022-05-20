# Open a file and search for a specific word

use strict;
use warnings;

$|=1;

sub main {

    my $file = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/lesson4test.txt';

    open(HANDLER, $file) or die("$file not found.\n");

    while(my $line = <HANDLER>) {
        if($line =~ /\bjust\b/){
            print $line;
        }
    }

    close(HANDLER);
}

main();