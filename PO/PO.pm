package PO;
use Test::More tests=> 4;
use strict;
use warnings;
use 5.010;

sub new{
	my $class =shift;
	my $self = bless { @_ }, $class;
	return $self;
}

sub navigate {
	my ($self) = @_;
	ok($self->{sel}->get("$self->{domain}"));
}

sub title {
	my ($self) = @_;
	is(my $title = $self->{sel}->get_title(),'Google',"pass");
	say("Page title is $title");
	
	
}

sub search {
	my ($self) = @_;
	ok($self->{sel}->find_element("//*[\@class='gLFyf gsfi']")->send_keys($self->{name}));
	

}

sub button {
	my ($self) = @_;
	$self->{sel}->set_implicit_wait_timeout(10);
	ok($self->{sel}->find_element("//*[\@name='btnK']")->click);
}

sub stop
{
	my ($self) = @_;
	$self->{sel}->close();
}

1;