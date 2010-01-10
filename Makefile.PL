
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



WriteMakefile(
  DISTNAME  => 'Throwable',
  NAME      => 'Throwable',
  AUTHOR    => "Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>\,\ Florian\ Ragwitz\ \<rafl\@debian\.org\>",
  ABSTRACT  => "a\ role\ for\ classes\ that\ can\ be\ thrown",
  VERSION   => '0.100090',
  EXE_FILES => [  ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Devel::StackTrace" => '1.21',
    "ExtUtils::MakeMaker" => '6.11',
    "Moose" => '0.87',
  },
  test => {TESTS => 't/*.t'}
);



