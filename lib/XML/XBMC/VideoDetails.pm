
package XML::XBMC::VideoDetails;

use Moose;
use PRANG::Graph;

has_element "codec" => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element "aspect" => (
	is => "rw",
	isa => "Num",
	xml_required => 0,
);

has_element "width" => (
	is => "rw",
	isa => "Int",
	xml_required => 0,
);

has_element "height" => (
	is => "rw",
	isa => "Int",
	xml_required => 0,
);

1;
