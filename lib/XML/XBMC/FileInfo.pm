
package XML::XBMC::FileInfo;

use Moose;
use PRANG::Graph;

has_element "streamdetails" => (
	is => "rw",
	isa => "XML::XBMC::StreamDetails",
	required => 1,
);

1;
