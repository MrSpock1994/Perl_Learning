use strict;
use warnings;


# use this to download things from internet
use LWP::Simple;

sub main {

    my $content = get("https://www.caveofprogramming.com");
    unless(defined($content)) {
        die "Cannot access the url provided!\n";
    }
    

    while($content =~ m|(<\s*a\s+[^>]*href\s*=\s*['"]([^>"']+)['"])|sig){
        print("$1\n");
    }
}

main();