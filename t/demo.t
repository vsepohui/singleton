#!/usr/bin/perl

use lib '.';
use strict;
use warnings;
use 5.022;
use signleton;


my $d = signleton new TestClass('same');
$d->test('123');

my $d2 = signleton new TestClass('same222');
$d->test('12345');


package TestClass;

sub new {
	my $class = shift;
	my $id    = shift;
	my $self = {id => $id};
	return bless $self, $class;
}

sub test {
	my $self = shift;
	my $text = shift;
	my $id   = $self->{id};
	say "test - $id - $text";
}

1;
