package PO;

use strict;
use warnings;


sub new{
	my $class =shift;
	my $self = bless { @_ }, $class;
	return $self;
}

sub navigate {
	my ($self) = @_;
	
	$self->{sel}->get("$self->{domain}");
}

sub title {
	my ($self) = @_;
	my $title = $self->{sel}->get_title();
	print"Page title is $title";
	
	
}

sub search {
	my ($self) = @_;
	$self->{sel}->find_element("//*[\@name='q']")->send_keys($self->{name}) or warn $!;
}

sub button {
	my ($self) = @_;
	$self->{sel}->find_element("/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]")->click;
}

1;