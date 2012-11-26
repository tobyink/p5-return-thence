use strict;
use Test::More tests => 2;
use return::thence;

sub baz { return::thence('a' .. 'z') };

is scalar(baz()), 'z';
is_deeply [ baz() ], [ 'a'..'z' ];
