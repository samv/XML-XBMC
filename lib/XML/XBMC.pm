
package XML::XBMC;

our $VERSION = "0.01";

use XML::XBMC::AudioDetails;
use XML::XBMC::VideoDetails;
use XML::XBMC::SubDetails;
use XML::XBMC::StreamDetails;
use XML::XBMC::FileInfo;
use XML::XBMC::MovieRole;
use XML::XBMC::Movie;

1;

=head1 NAME

XML::XBMC - PRANG implementation of XBMC .NFO files

=head1 SYNOPSIS

See L<XML::XBMC::Movie> for the currently implemented class.

=head1 DESCRIPTION

This distribution is a quick hack so I can write .nfo files from the
little IMDB scraping/tidy-up script I'm working on.

=head1 SEE ALSO

L<PRANG>, L<XML::XBMC::Movie>

=head1 AUTHOR AND LICENSE

Sam Vilain, L<samv@cpan.org>

This program is free software: you can redistribute it and/or modify
it under the terms of the Artistic License 2.0 or later.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the Artistic
License 2.0 for more details.

You should have received a copy of the Artistic License the file
COPYING.txt.  If not, see
L<http://www.perlfoundation.org/artistic_license_2_0>

=cut

