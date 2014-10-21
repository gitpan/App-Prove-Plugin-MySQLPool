use Test::More;
plan skip_all => 'mysql_install_db not found'
    unless `which mysql_install_db 2>/dev/null`;
use strict;
use warnings;
use Test::Requires qw/DBI/;

use t::Util;

my $out = run_test({
    tests    => [ 't/plx/prepare.plx' ],
    preparer => 't::Util',
});
exit_status_is( 0 );

done_testing;
