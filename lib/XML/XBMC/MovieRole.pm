
package XML::XBMC::MovieRole;

use Moose;
use PRANG::Graph;

has_element "name" => (
	is => "rw",
	isa => "Str",
);

has_element "role" => (
	is => "rw",
	isa => "Str",
);

1;
