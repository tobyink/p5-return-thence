use strict;
use warnings;

use if !eval{ require List::Util::PP },
	'Test::More', skip_all => 'need List::Util::PP';

use Test::More;
use return::thence;
use List::Util::PP qw(reduce);

sub zum {
	my $zum = reduce {
		return::thence 0 if $a == 0;
		return::thence 0 if $b == 0;
		$a + $b
	} @_;
	return $zum;
}

is zum(1, 2, 3, 4), 10;
is zum(1, 2, 0, 3, 4), 0;

done_testing;
