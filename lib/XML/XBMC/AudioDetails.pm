
package XML::XBMC::AudioDetails;

use Moose;
use PRANG::Graph;

has_element "codec" => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element "language" => (
	is => "rw",
	isa => "Str",
	xml_required => 0,
);

has_element "channels" => (
	is => "rw",
	isa => "Int",
	xml_required => 0,
);

1;
