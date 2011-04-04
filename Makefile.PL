#
# Copyright (C) 2011  Sam Vilain
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the Artistic License 2.0 or later.  You should
# have received a copy of the Artistic License the file COPYING.txt.
# If not, see <http://www.perlfoundation.org/artistic_license_2_0>

use inc::Module::Install;

name            ("XML-XBMC");
abstract        ("PRANG implementation of XBMC .NFO files");
author          ("Sam Vilain <sam\@vilain.net>");
version_from    ("lib/XML/XBMC.pm");
license         ('artistic');

requires        ("Moose" => 0.54);
requires        ("PRANG" => "0.10_01");
test_requires   ("XML::Compare" => 0.04);

&WriteAll;
