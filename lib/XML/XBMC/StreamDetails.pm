
package XML::XBMC::StreamDetails;

use Moose;
use PRANG::Graph;

has_element "video" => (
	is => "rw",
	isa => "XML::XBMC::VideoDetails",
	xml_required => 0,
);

has_element "audio" => (
	is => "rw",
	isa => "ArrayRef[XML::XBMC::AudioDetails]",
	xml_required => 0,
);

has_element "subtitle" => (
	is => "rw",
	isa => "ArrayRef[XML::XBMC::SubDetails]",
	xml_required => 0,
);

1;
