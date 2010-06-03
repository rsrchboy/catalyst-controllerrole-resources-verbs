#!/usr/bin/env perl

use Test::More tests => 1;

BEGIN {
    use_ok( 'Catalyst::ControllerRole::Resources::Verbs' );
}

diag( "Testing Catalyst::ControllerRole::Resources::Verbs $Catalyst::ControllerRole::Resources::Verbs::VERSION, Perl $], $^X" );
