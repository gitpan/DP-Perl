#------------------------------------------------------
#
#
#      Perl - languange extensions
#
#
#------------------------------------------------------
# 2003/05/09 - $Date: 2004/01/01 21:07:22 $
# (C) Daniel Peder & Infoset s.r.o., all rights reserved
# http://www.infoset.com, Daniel.Peder@infoset.com
#------------------------------------------------------
# $Revision: 1.4 $
# $Date: 2004/01/01 21:07:22 $
# $Id: Perl.pm_rev 1.4 2004/01/01 21:07:22 root Exp root $

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: pod intro
#

=head1 NAME

DP::Perl - several languange extensions

=head1 SYNOPSIS

  use DP::Perl qw( :ALL );
  
  ...
  ...
  
=head1 DESCRIPTION


=head2 EXPORT

nothing

=cut



# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: package
#

	package DP::Perl;
	
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: exporter
#

    require Exporter;
	@ISA = qw(Exporter);
	
	@EXPORT_OK = qw( &all_defined );
	%EXPORT_TAGS = ( ALL => \@EXPORT_OK );
				  
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: constants
#

	# use constant ConstName => 'ConstValue';

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: version
#

	use vars qw( $VERSION $VERSION_LABEL $REVISION $REVISION_DATETIME );

	$VERSION           = '0.20';
	
	$REVISION          = (qw$Revision: 1.4 $)[1];
	$REVISION_DATETIME = join(' ',(qw$Date: 2004/01/01 21:07:22 $)[1,2]);
	$VERSION_LABEL     = "$VERSION (rev. $REVISION $REVISION_DATETIME)";

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: modules use
#

	require 5.005_62;

	use strict;
	use warnings;
	
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: functions
#

=head1 FUNCTIONS


=cut

=over 4






=item all_defined

 $bool = all_defined( @values )
 
Return FALSE if some of values in array are undefined

=cut

### -----------
sub all_defined
### -----------
{
	foreach ( @_ ) { return '' unless defined }
	return 1
}








=item hf (hash filter)

 @values_by_filtered_keys = hf( $precompiled_regex, %hash_array )
 %hash_array_of_filtered_keys = %{hf( $precompiled_regex, %hash_array )}

B<example>

 %hash   = (key_ax=>'val_ax', key_ay=>'val_ay', key_bx=>'val_bx', key_by=>'val_by');
 @values = hf(qr/\w+/,%hash);
 %values = %{hf(qr/\w+/,%hash)};
 
=cut

### --------
sub hf ($\%) 
### --------
{
	my( $re, $h ) = @_;
	if( wantarray )
	{
		return @$h{grep(/$re/,keys(%$h))}
	}
	else
	{
		return {map(($_,$$h{$_}),grep(/$re/,keys(%$h)))}
	}
}










=back

=cut

1;


# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
# SECTION: pod epilogue
#

=head1 FILES


=head1 REVISION

B<<  project started: 2003/05/09 >>

 $Id: Perl.pm_rev 1.4 2004/01/01 21:07:22 root Exp root $


=head1 AUTHOR

 Daniel Peder

 <Daniel.Peder@Infoset.COM>
 http://www.infoset.com

=head1 SEE ALSO


=cut

