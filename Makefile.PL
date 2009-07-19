
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Throwable',
  NAME      => 'Throwable',
  AUTHOR    => 'Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>\,\ Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'a\ role\ for\ classes\ that\ can\ be\ thrown',
  VERSION   => '0.092000',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Devel::StackTrace" => '1.21',
    "Moose" => '0.87',
  },
);
