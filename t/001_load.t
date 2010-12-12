# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 2;

BEGIN { use_ok( 'Data::Dumper::XS' ); }

my $object = Data::Dumper::XS->new ();
isa_ok ($object, 'Data::Dumper::XS');


