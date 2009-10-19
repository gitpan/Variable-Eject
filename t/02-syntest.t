#!/usr/bin/env perl

use uni::perl;
use Test::More tests => 2;
use lib::abs '../lib';
use Variable::Eject;

my $hash = { scalar => 'scalar value' };

eject( $hash => ${scalar} );

is $scalar, 'scalar value', 'scalar ejected';
$scalar .= ' modified';

is_deeply $hash, {
	scalar => 'scalar value modified',
}, 'original modified';
