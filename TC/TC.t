use strict;
use warnings;
use lib "PO";
use PO;

use Selenium::Remote::Driver;
my $domain = "http://www.google.com";
my $sel = Selenium::Remote::Driver->new(
	'browser_name' => "chrome",
	'auto_close' => 0
);

my $user = PO->new(sel => $sel,
					domain => $domain,
					name => "google");
$user->navigate();
$user->title();
$user->search();
$user->button();
$user->stop();
