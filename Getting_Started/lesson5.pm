# Write things to a file

use strict;
use warnings;

$|=1;

sub main {
    my $path = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/';

    my $output = $path.'output.txt';

    open(HANDLER, '>'.$output) or die("Cant create $output.\n");

    print HANDLER "i love chess, science and technology";    

    close(HANDLER);
    #print $output;
  
}

main();
