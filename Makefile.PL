
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Catalyst::Controller::ActionRole',
                       'DISTNAME' => 'Catalyst-Controller-ActionRole',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Florian Ragwitz <rafl@debian.org>, Hans Dieter Pearcey <hdp@weftsoar.net>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'Apply roles to action instances',
                       'EXE_FILES' => [],
                       'VERSION' => '0.14',
                       'PREREQ_PM' => {
                                        'namespace::clean' => '0',
                                        'MooseX::Types::Moose' => '0',
                                        'Class::MOP' => '0.80',
                                        'String::RewritePrefix' => '0.004',
                                        'Catalyst::Runtime' => '5.71001',
                                        'Moose' => '0.90'
                                      },
                       'LICENSE' => 'perl'
                     );


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM}; 
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod}; 
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



