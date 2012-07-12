package Log::Log4perl::Appender::Lim::CLI;

use common::sense;

use base qw(Log::Log4perl::Appender);

=head1 NAME

Log::Log4perl::Appender::Lim::CLI

=head1 VERSION

Version 0.1

=cut

our $VERSION = '0.1';

=head1 SYNOPSIS

...

=head1 SUBROUTINES/METHODS

=head2 function1

=cut

sub new {
    my $this = shift;
    my $class = ref($this) || $this;
    my %args = ( @_ );
    my $self = {
        name => 'unknown name',
        %args
    };
    
    bless $self, $class;
}

=head2 function1

=cut

sub log {
    my($self, %params) = @_;

    if (exists $self->{cli}) {
        $params{message} =~ s/[\r\n]+$//o;
        $self->{cli}->println($params{message});
    }
}

=head1 AUTHOR

Jerry Lundström, C<< <lundstrom.jerry at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-lim at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Log::Log4perl::Appender::Lim::CLI>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Log::Log4perl::Appender::Lim::CLI


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Log::Log4perl::Appender::Lim::CLI>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Log::Log4perl::Appender::Lim::CLI>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Log::Log4perl::Appender::Lim::CLI>

=item * Search CPAN

L<http://search.cpan.org/dist/Log::Log4perl::Appender::Lim::CLI/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Jerry Lundström.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Log::Log4perl::Appender::Lim::CLI
