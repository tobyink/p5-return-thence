use strict;
use Test::More tests => 2;
use return::thence;
use Try::Tiny;

# will return 1
sub foo {
	try { return(2) };
	return 1;
}

# will return 2
sub bar {
	try { return::thence(2) };
	return 1;
}

is foo(), 1;
is bar(), 1;
