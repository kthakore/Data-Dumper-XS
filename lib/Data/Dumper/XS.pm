package Data::Dumper::XS;
use strict;
use warnings; 
BEGIN {
    use Exporter ();
    use vars qw($VERSION @ISA @EXPORT @EXPORT_OK %EXPORT_TAGS);
    $VERSION     = '0.01';
    @ISA         = qw(Exporter);
    @EXPORT      = qw(Dumper);
    @EXPORT_OK   = qw(Dumper);
    %EXPORT_TAGS = ();
}


#################### subroutine header begin ####################

=head2 Dumper 

 Usage     : Call Dumper on any perl object
 Purpose   : Converts Perl Object to Hard coded XS
 Returns   : Returns a string of XS

See Also   : Data::Dumper 

=cut

#################### subroutine header end ####################


sub Dumper
{
	my ($name, $obj) = @_;
	my $ref_type = ref $obj;

	my $result = "\nSV*\n$name()\n\tCODE:\n\t\tRETVAL =";

	$result .= _ref_xs( @_ );
	$result .= "\n\tOUTPUT:\n\t\tRETVAL\n";

	return $result;

}

#################### private method  ###################

sub _ref_xs
{
	my ($name, $obj) = @_;
	my $ref_type = ref $obj;

	my $result = " ";
	if ( $ref_type eq 'HASH' )
	{
	
		$result .= _hash_xs( @_ );

	}
	elsif ( $ref_type eq 'ARRAY' )
	{

		$result .= _array_xs( @_ );

	}
	elsif ( $ref_type )
	{
		
		$result .= _bless_xs (@_);
		
	}
	else
	{
		#We should seperate SV or NV or IV

		$result .= " newSVpv (\"$obj\",0);";

	}

	return $result;
}

sub _hash_xs
{

}

sub _array_xs
{

}

sub _bless_xs
{

}

#################### main pod documentation begin ###################
## Below is the stub of documentation for your module. 
## You better edit it!


=head1 NAME

Data::Dumper::XS - Dumper XS Code from Perl Data Objects

=head1 SYNOPSIS

  use Data::Dumper::XS;
  blah blah blah


=head1 DESCRIPTION

Stub documentation for this module was created by ExtUtils::ModuleMaker.
It looks like the author of the extension was negligent enough
to leave the stub unedited.

Blah blah blah.


=head1 USAGE



=head1 BUGS



=head1 SUPPORT



=head1 AUTHOR

    Kartik Thakore
    CPAN ID: KTHAKORE
    PerlGameDev
    KTHAKORE@cpan.org
    http://github.com/PerlGameDev

=head1 COPYRIGHT

This program is free software; you can redistribute
it and/or modify it under the same terms as Perl itself.

The full text of the license can be found in the
LICENSE file included with this module.


=head1 SEE ALSO

perl(1).

=cut

#################### main pod documentation end ###################


1;
# The preceding line will help the module return a true value

