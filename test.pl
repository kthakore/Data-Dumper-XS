use strict;
use warnings;
use 5.12.2;
use lib 'lib';

use Data::Dumper::XS;

say "Scalar: ".Dumper ('scalar', 'Test');
say "Array Ref: ".Dumper ('array_ref', ['Test']);
say "Hash Ref: ".Dumper ('hash_ref', {key =>'Test'});
say "Bless'd Ref: ".Dumper( 'bless_ref', bless( {}, 'foo' ) );


