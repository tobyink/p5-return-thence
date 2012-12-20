package Local::Foo;

use strict;
use Test::More tests => 2;
use return::thence;
use Try::Tiny;

# will return 99
sub foo {
	try { return(42) };
	return 99;
}

# will return 42
sub bar {
	try { return::thence(42) };
	return 99;
}

is foo(), 99;
is bar(), 42;
