#------------------------------------------------------
#
#
#      Perl - languange extensions
#
#
#------------------------------------------------------
# 2003/05/09 - $Date: 2003/12/12 11:08:58 $
# (C) Daniel Peder & Infoset s.r.o., all rights reserved
# http://www.infoset.com, Daniel.Peder@infoset.com
#------------------------------------------------------
# $Revision: 1.3 $
# $Date: 2003/12/12 11:08:58 $
# $Id: Perl.pm_rev 1.3 2003/12/12 11:08:58 root Exp root $

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
#	POD SECTION
#
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

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

	package DP::Perl;
	
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

    require Exporter;
	@ISA = qw(Exporter);
	
	@EXPORT_OK = qw( &all_defined );
	%EXPORT_TAGS = ( ALL => \@EXPORT_OK );
				  
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

	# use constant ConstName => 'ConstValue';

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

	$VERSION           = '0.101';
	$REVISION          = (qw$Revision: 1.3 $)[1];
	$REVISION_DATETIME = join(' ',(qw$Date: 2003/12/12 11:08:58 $)[1,2]);

# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

	require 5.005_62;

	use strict;
	use warnings;
	
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

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










=back

=cut

1;


# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
#
#	POD SECTION
#
# --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 

=head1 FILES


=head1 REVISION

B<<  project started: 2003/05/09 >>

 $Id: Perl.pm_rev 1.3 2003/12/12 11:08:58 root Exp root $


=head1 AUTHOR

 Daniel Peder

 <Daniel.Peder@Infoset.COM>
 http://www.infoset.com

 Czech Republic national flag: 
 LeftSideBlueTriangleRightSideHorizontalSplitTopWhiteBottomRed

=head1 SEE ALSO


=cut

