# Print contents from a web page

use strict;
use warnings;

use LWP::Simple;

sub main {

    # my $document = get("https://training.play-with-docker.com/dev-stage1/");
    # print get("https://training.play-with-docker.com/dev-stage1/");
    my $url = "htts://training.play-with-docker.com/dev-stage1/";
    my $file = "site.html";
    my $code = getstore($url, $file);

    if($code == 200) {
        print("Success\n");
    }
    else {
        print("Failed\n");
    }
}

main();