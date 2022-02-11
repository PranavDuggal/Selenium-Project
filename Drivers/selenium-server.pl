use strict;
use warnings;

my @args = ("java" ,"-jar", "-Dwebdriver.chrome.driver = Drivers/chromedriver.exe","Drivers/selenium-server-standalone-3.141.59.jar");

system(@args);