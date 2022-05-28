use strict;
use warnings;

use Data::Dumper;

$| = 1;

sub main {

    my $input =  '/home/will/Coding/Perl_Main/Learning_Perl_02/Reading_Files/test_2.csv';

    unless(open(HANDLER, $input)){
        die ("\nCannot open $input");
            }
    <HANDLER>;
    my @data;
    

    while(my $line = <HANDLER>) {

        chomp $line;

        my ($name, $payment, $date) = split /\s*,\s*/, $line;

        my %values = (
            "Name" => "$name",
            "Payment" => "$payment",
            "Date" => "$date",
        );

        push @data, \%values;
    }
    close HANDLER;

    foreach my $data(@data){
        print(Dumper($data));
    }
}

main();