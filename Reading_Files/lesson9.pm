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
    

    LINE: while(my $line = <HANDLER>) {
        # checking for spaces at the beginning of the line
        $line =~ s/^\s*//;
        # checking for blank line
        $line =~ /\S+/ or next;

        chomp $line;


        my @values = split /\s*,\s*/, $line;

        #checking if the array values has 3 elements

        if (@values < 3){
        
            print("Invalid line: $line\n");
            next LINE;

        }

        foreach my $value(@values) {

            if($value eq ''){
                print("Invalid line: $line\n");
                next LINE;
            }

        }


        my ($name, $payment, $date) = @values;

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