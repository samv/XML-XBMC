
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

=cut

