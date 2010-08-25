
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Apply roles to action instances',
  'AUTHOR' => 'Florian Ragwitz <rafl@debian.org>, Hans Dieter Pearcey <hdp@weftsoar.net>, Alex J. G. Burzyński <ajgb@ajgb.net>, John Napiorkowski <jjn1056@yahoo.com>, William King <william.king@quentustech.com>, Tomas Doran <bobtfish@bobtfish.net>',
  'BUILD_REQUIRES' => {
    'Catalyst' => '0',
    'Catalyst::Action' => '0',
    'Catalyst::Action::REST' => '0',
    'Catalyst::Test' => '0',
    'FindBin' => '0',
    'Moose::Role' => '0',
    'Test::More' => '0',
    'parent' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Catalyst-Controller-ActionRole',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Catalyst::Controller::ActionRole',
  'PREREQ_PM' => {
    'Catalyst::Controller' => '0',
    'Catalyst::Runtime' => '5.80025',
    'Catalyst::Utils' => '0',
    'Class::MOP' => '0',
    'List::Util' => '0',
    'Moose' => '0',
    'Moose::Meta::Class' => '0',
    'MooseX::Types::Moose' => '0',
    'String::RewritePrefix' => '0.004',
    'namespace::clean' => '0'
  },
  'VERSION' => '0.15',
  'test' => {
    'TESTS' => 't/*.t'
  }
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



