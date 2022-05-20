# Quantifiers: Greedy vs Non-Greedy
# + means one more
# * means zero or more, * is greedy, it tries to match as much character as possible, to stop being greedy we use *?, to match as few as possible


use strict;
use warnings;

$|=1;

sub main {

    my $file = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/lesson4test.txt';

    open(HANDLER, $file) or die("$file not found.\n");

    while(my $line = <HANDLER>) {
        
        if($line =~ /(p.*s)/) {
            print "$1\n";
            print $line;
            
        }
    }

    close(HANDLER);

}

main();