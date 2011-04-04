=head1 NAME

XML::XBMC::Movie - XML for an XBMC movie .nfo file

=head1 SYNOPSIS

  use XML::XBMC::Movie;

  my $movie = XML::XBMC::Movie->new(
      id => "tt0432337',
  );

  print $movie->to_xml(1);

=head1 DESCRIPTION

This PRANG class is a definition for the XBMC XML .NFO format,
documented at L<http://wiki.xbmc.org/index.php?title=Import_-_Export_Library#Movies_2>

=cut

package XML::XBMC::Movie;

use Moose;
use PRANG::Graph;
sub root_element { "movie" }
sub xmlns { undef }

use Moose::Util::TypeConstraints;

has_element 'title' =>
	is => "rw",
	isa => "Str",
	required => 1,
;

has_element 'originaltitle' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'sorttitle' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'set' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'rating' => (
	is => "rw",
	isa => "Num",
	xml_required => 0,
);

has_element 'year' => (
	is => "rw",
	isa => "Num",
	xml_required => 0,
);

subtype "ZeroOrOne"
	=> as "Int"
	=> where {
		($_ == 0) || ($_ == 1);
	};
has_element 'top250' => (
	is => "rw",
	isa => "ZeroOrOne",
	xml_required => 0,
);

has_element 'votes' => (
	is => "rw",
	isa => "Int",
	xml_required => 0,
);

has_element 'outline' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'plot' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'tagline' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'runtime' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

subtype 'XML::XBMC::url'
	=> as "Str"
	=> where { m{^([\w\-+]+:.*)?$} };

has_element 'thumb' => (
	is => "rw",
	isa => "XML::XBMC::url",
	xml_required => 0,
);

has_element 'mpaa' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'playcount' => (
	is => "rw",
	isa => "Num",
	xml_required => 0,
);

subtype "TrueOrFalse"
	=> as "Str"
	=> where {
		m{^(true|false)$};
	};
has_element 'watched' => (
	is => "rw",
	isa => "TrueOrFalse",  # "false" in example...
	xml_required => 0,
);

subtype 'IMDB::id'
	=> as "Str"
	=> where { m{^tt(\d{5,})$} };

has_element 'id' => (
	is => "rw",
	isa => "IMDB::id",
);

has_element 'filenameandpath' => (
	is => "rw",
	isa => "ArrayRef[Str]",  # Example: c:\Dummy_Movie... *facepalm*
	xml_min => 0,
	auto_deref => 1,
);

has_element 'trailer' => (
	is => "rw",
	isa => "XML::XBMC::url",
	xml_required => 0,
);

has_element 'genre' => (
	is => "rw",
	isa => "ArrayRef[Str]",
	xml_min => 0,
);

has_element 'credits' => (
	is => "rw",
	isa => "Str",  # umm... no example...
	xml_required => 0,
);

has_element 'fileinfo' => (
	is => "rw",
	isa => "XML::XBMC::FileInfo",
	xml_required => 0,
);

has_element 'director' => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element 'cast' => (
	is => "rw",
	isa => "ArrayRef[XML::XBMC::MovieRole]",
	xml_required => 0,
	xml_min => 0,
	xml_nodeName => "actor",
);

with 'PRANG::Graph', 'XML::XBMC::Node';

1;

=head1 SEE ALSO

L<PRANG>

=cut
