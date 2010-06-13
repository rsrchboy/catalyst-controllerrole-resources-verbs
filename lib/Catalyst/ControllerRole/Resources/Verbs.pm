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

package Catalyst::ControllerRole::Resources::Verbs;

our $VERSION = '0.001_01';

1;

__END__

=head1 NAME

Catalyst::ControllerRole::Resources::Verbs - Additional verbs for Catalyst::Controller::Resources

=head1 DESCRIPTION

L<Catalyst::Controller::Resources> makes it easy to create a resource-oriented
controller, but the actual mechanics of extending it with additional "verbs"
is a little opaque.  This package provides a parameterized role designed to
make adding additional verbs easy, as well as a number of concrete roles
implementing additional common actions.

=head1 PARAMETERIZED ROLE

See L<Catalyst::ControllerRole::Resources::Verb> for details.

=head1 CONCRETE ROLES

These implementations live under the
Catalyst::ControllerRole::Resources::Verb::* namespace.

=head2 Count

L<Catalyst::ControllerRole::Resources::Verb::Count> implements a COLLECTION
action that is expected to return the collection count (whatever that means in
the context you're using it).

    path: count
    args: none
    method: GET

=head1 SEE ALSO

L<Catalyst::Controller::Resources>, L<Catalyst::Controller::REST>.

=head1 BUGS AND LIMITATIONS

There are no known bugs in this module.

Please report problems to Chris Weyl <cweyl@alumni.drew.edu>, or (preferred)
to this package's RT tracker at
<bug-Catalyst-ControllerRole-Resources-Verbs@rt.cpan.org>.

Patches are welcome.

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


