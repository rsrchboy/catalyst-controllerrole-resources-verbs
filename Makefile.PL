
sub githubmeta  { warn 'You need Module::Install::GithubMeta installed' }
sub extra_tests { warn 'You need Module::Install::ExtraTests installed' }

use inc::Module::Install;

githubmeta;

name     'Catalyst-ControllerRole-Resources-Verbs';
all_from 'lib/Catalyst/ControllerRole/Resources/Verbs.pm';
author   q{Chris Weyl <cweyl@alumni.drew.edu>};
license  'lgpl';

readme_from 'lib/Catalyst/ControllerRole/Resources/Verbs.pm';
readme_markdown_from 'lib/Catalyst/ControllerRole/Resources/Verbs.pm';

requires 'namespace::autoclean' => '0.09';
requires 'Catalyst::Controller::Resources' => '0.08';
requires 'MooseX::Role::Parameterized'     => '0.18';

test_requires 'Test::More';

extra_tests;
auto_install;
auto_provides;

WriteAll;

