# Wildcards in Regex the dot, each dot represents a character


use strict;
use warnings;

$|=1;

sub main {

    my $file = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/lesson4test.txt';

    open(HANDLER, $file) or die("$file not found.\n");

    while(my $line = <HANDLER>) {
        #print $line;
        if($line =~ / j..t /){
            print $line;
        }
    }

    close(HANDLER);

}

main();