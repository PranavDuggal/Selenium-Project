use strict;
use warnings;
use 5.010;
use Test::More tests => 4;
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
					
ok($user->navigate());
say("Navigated to the page");
ok($user->getemail());
say("Entered Email");
ok($user->getpassword());
say("Entered Password");
ok($user->login());
say("Clicked Login Button");
sleep(5);
$user->close();

