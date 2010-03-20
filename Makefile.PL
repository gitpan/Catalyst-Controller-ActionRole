
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Catalyst::Controller::ActionRole',
                       'DISTNAME' => 'Catalyst-Controller-ActionRole',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Florian Ragwitz <rafl@debian.org>, Hans Dieter Pearcey <hdp@weftsoar.net>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Apply roles to action instances',
                       'EXE_FILES' => [],
                       'VERSION' => '0.13',
                       'PREREQ_PM' => {
                                        'MooseX::Types::Moose' => '0',
                                        'namespace::clean' => '0',
                                        'Class::MOP' => '0.80',
                                        'String::RewritePrefix' => '0.004',
                                        'Catalyst::Runtime' => '5.71001',
                                        'Moose' => '0.90'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



