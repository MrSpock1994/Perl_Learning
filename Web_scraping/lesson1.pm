use strict;
use warnings;


# use this to download things from internet
use LWP::Simple;

sub main {

    my $content = get("https://www.caveofprogramming.com");
    unless(defined($content)) {
        die "Cannot access the url provided!\n";
    }
    #print($content);

    if($content =~ m'<a class="mainlink" href=".+?">(.+?)</a>'i) {

        print("Title found");
    }
    else {
        print("Title not found");
    }
}

main();