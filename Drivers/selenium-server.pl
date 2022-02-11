use strict;
use warnings;

my @args = ("java" ,"-jar", "-Dwebdriver.chrome.driver = chromedriver.exe","selenium-server-standalone-3.141.59.jar");

system(@args);