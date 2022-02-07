use strict;
use warnings;

use lib "PO";
use PO_LOGIN;
use Selenium::Remote::Driver;
my $domain = "https://www.saucedemo.com/";
my $sel = Selenium::Remote::Driver->new(
	'browser_name' => "chrome",
	'auto_close' => 0
);

my $user = PO_LOGIN->new(sel => $sel,
					domain => $domain,
					username => 'standard_user',
					password => 'secret_sauce');
					
$user->navigate();
say ("Navigated to the page");
$user->getemail();
say("Entered Email");
$user->getpassword();
say("Entered Password");
$user->login();
say("Clicked Login Button");
sleep(5);
$user->close();