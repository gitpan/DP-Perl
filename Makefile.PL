use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'DP::Perl',
    'VERSION_FROM'	=> 'Perl.pm', # finds $VERSION
    'PREREQ_PM'		=> { # e.g., Module::Name => 1.1
						Test::Easy        => 0,
	                   },
    ($] >= 5.005 ? (
      ABSTRACT_FROM => 'Perl.pm', 
      AUTHOR     => 'Daniel Peder <Daniel.Peder@infoset.com>',
    ) : ()),
);
sub MY::postamble { q{

docs : README

README: Perl.pm
	pod2text --loose Perl.pm > README

xdist:
	[ -f MANIFEST ] && rm -f MANIFEST ; make realclean docs manifest tardist; perl Makefile.PL

}; }
