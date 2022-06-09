use strict;
use warnings;


# use this to download things from internet
use LWP::Simple;

sub main {

    my $content = "The 39 steps";
    # to match a number we use d
    if($content =~ /(\d+)/){
        print("Matched $1\n");
    }
    else {
        print("No match\n");
    }
}

main();