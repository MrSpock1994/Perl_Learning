# Checking if a file exists

use strict;
use warnings;

$|=1;

sub main {

    my $file1 = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/lesson1.pm';
    my $file2 = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/lesson2.pm';
    my $file3 = '/home/will/Coding/Perl_Main/Learning_Perl_02/Getting_Started/lesson4.pm';
    my @files = ($file1, $file2, $file3);

    foreach my $file (@files){
        if (-f $file){
        print"Found file: $file \n";
    }
    else{
        print"File not found: $file \n";
    }

    }
    
    
}

main();