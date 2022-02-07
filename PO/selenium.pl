use Selenium::Chrome qw( );
use Selenium::Waiter qw/wait_until/;

my $web_driver = Selenium::Chrome->new(
binary => "D:/Drivers/chromedriver.exe",
);
$web_driver->get('https://www.facebook.com/login');

#--------------Verify whether text fields are acctepting elements-----------------------#
my $element = $web_driver->find_element('email','name');
my $password = $web_driver->find_element('pass','name');
my $email = 'pd@xyz.com';
my $password1 = 'xyz@pd';

if($element){


$element->send_keys($email);
}
if($password){



$password->send_keys($password1);
sleep(30);
}