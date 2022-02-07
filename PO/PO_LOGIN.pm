package PO_LOGIN;

use strict;
use warnings;
use Selenium::Waiter;

sub new{
	my $class =shift;
	my $self = bless { @_ }, $class;
	return $self;
}

sub navigate {
	my ($self) = @_;
	
	$self->{sel}->get("$self->{domain}");
	
}



sub getemail {
	my ($self) = @_;
	$self->{sel}->find_element("//*[\@id='user-name']")->send_keys($self->{username}) or warn $!;
	
}


sub getpassword {
	my ($self) = @_;
	$self->{sel}->find_element("//*[\@id='password']")->send_keys($self->{password}) or warn $!;
	
}


sub login {
	my ($self) = @_;
	$self->{sel}->find_element("//*[\@id='login-button']")->click;
	
}

sub close {
	my ($self) = @_;
	$self->{sel}->quit();
}

1;