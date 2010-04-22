
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Throwable',
                       'DISTNAME' => 'Throwable',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Ricardo SIGNES <rjbs@cpan.org>, Florian Ragwitz <rafl@debian.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0'
                                           },
                       'ABSTRACT' => 'a role for classes that can be thrown',
                       'EXE_FILES' => [],
                       'VERSION' => '0.101110',
                       'PREREQ_PM' => {
                                        'Moose::Role' => '0.87',
                                        'Devel::StackTrace' => '1.21',
                                        'overload' => '0',
                                        'Moose::Util::TypeConstraints' => '0',
                                        'Moose' => '0.87'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



