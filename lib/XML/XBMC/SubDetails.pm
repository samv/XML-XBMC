
package XML::XBMC::SubDetails;

use Moose;
use PRANG::Graph;

has_element "language" => (
	is => "rw",
	isa => "Str",
);

1;
