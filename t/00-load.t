#!/usr/bin/env perl

use uni::perl;
use lib::abs '../lib';
use Test::More tests => 1;
BEGIN { use_ok( 'Variable::Eject' ); }
diag( "Testing Variable::Eject $Variable::Eject::VERSION, Perl $], $^X" );
