package Throwable;
our $VERSION = '0.091780';

use Moose::Role;
# ABSTRACT: a role for classes that can be thrown


has 'previous_exception' => (
  is       => 'ro',
  init_arg => undef,
  default  => sub {
    return unless defined $@ and ref $@ or length $@;
    return $@;
  },
);


sub throw {
  my ($self, @rest) = @_;
  my $throwable = $self->new(@rest);
  die $throwable;
}

no Moose::Role;
1;

__END__

=pod

=head1 NAME

Throwable - a role for classes that can be thrown

=head1 VERSION

version 0.091780

=head1 SYNOPSIS

  package Redirect;
  use Moose;
  with 'Throwable';

  has url => (is => 'ro');

...then later...

  Redirect->throw({ url => $url });

=head1 DESCRIPTION

Throwable is a role for classes that are meant to be thrown as exceptions to
standard program flow.  It is very simple and does only two things: saves any
previous value for C<$@> and calls C<die $self>.

=head1 ATTRIBUTES

=head2 previous_exception

This attribute is created automatically, and stores the value of C<$@> when the
Throwable object is created.

=head1 METHODS

=head2 throw

  Something::Throwable->throw({ attr => $value });

This method will call new, passing all arguments along to new, and will then
use the created object as the only argument to C<die>.

=head1 AUTHORS

  Ricardo SIGNES <rjbs@cpan.org>
  Florian Ragwitz <rafl@debian.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

=cut 


