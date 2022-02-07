use strict;
use warnings;

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
$user->getemail();
$user->getpassword();
$user->login();
sleep(5);
$user->close();