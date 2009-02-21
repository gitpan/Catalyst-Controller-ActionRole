
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-Controller-ActionRole',
  NAME      => 'Catalyst::Controller::ActionRole',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>',
  ABSTRACT  => 'Apply roles to action instances',
  VERSION   => '0.02',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "MooseX::Types::Moose" => '0',
    "Class::MOP" => '0',
    "String::RewritePrefix" => '0',
    "Catalyst::Runtime" => '0',
    "Moose" => '0.70',
  },
);
