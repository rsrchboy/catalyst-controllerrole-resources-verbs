#############################################################################
#
# Author:  Chris Weyl (cpan:RSRCHBOY), <cweyl@alumni.drew.edu>
# Company: No company, personal work
#
# Copyright (c) 2010  <cweyl@alumni.drew.edu>
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
#############################################################################

package Catalyst::ControllerRole::Resources::Verb;

use MooseX::Role::Parameterized;
use namespace::autoclean;

our $VERSION = '0.001_01';

# FIXME should type-validate target, verb (at least)
parameter target => (isa => 'Str', required => 1);
parameter verb   => (isa => 'Str', required => 1);
parameter method => (isa => 'Str', required => 1);
parameter path   => (isa => 'Str', required => 1);

my %attribute = (
    member     => '_additional_member_actions',
    collection => '_additional_collection_actions',
);

role {
    my $p = shift @_;

    die $p->target . ' is not a valid target!'
        unless exists $attribute{$p->target};

    requires $p->verb;

    around $attribute{$p->target} => sub {
        my ($orig, $self) = (shift, shift);
        my $actions = $self->$orig(@_);

        $actions->{$p->verb} = { method => $p->method, path => $p->path };
        return $actions;
    };
};

1;

__END__

=head1 NAME

Catalyst::ControllerRole::Resources::Verb

=head1 SYNOPSIS

    use Moose;
    use namespace::autoclean;

    BEGIN { extends 'Catalyst::Controller::Resources' }

    with 'Catalyst::ControllerRole::Resources::Verb' => {
        target  => 'collection',
        verb    => 'count',
        method  => 'GET',
        path    => 'count',
    };

    # make sure to implement the verb...
    sub count { ... }

    # profit!

=head1 DESCRIPTION

This is a parameterized Moose role, that handles the task of extending
L<Catalyst::Controller::Resources> with additional "verbs".

It takes 4 mandatory arguments:

=over 4

=item B<target> - 'member' or 'collection'

=item B<verb> - implementing controller method name

=item B<method> - HTTP method; e.g. GET, POST, etc

=item B<path> - the pathpart of the action

=back

=head1 SEE ALSO

L<Catalyst::ControllerRole::Resources::Verbs>

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2010 Chris Weyl <cweyl@alumni.drew.edu>

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the

    Free Software Foundation, Inc.
    59 Temple Place, Suite 330
    Boston, MA  02111-1307  USA

=cut


