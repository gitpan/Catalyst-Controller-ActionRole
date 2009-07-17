
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-Controller-ActionRole',
  NAME      => 'Catalyst::Controller::ActionRole',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>\,\ Hans\ Dieter\ Pearcey\ \<hdp\@weftsoar\.net\>',
  ABSTRACT  => 'Apply\ roles\ to\ action\ instances',
  VERSION   => '0.12',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "MooseX::Types::Moose" => '0',
    "Class::MOP" => '0.80',
    "String::RewritePrefix" => '0.004',
    "Catalyst::Runtime" => '5.71001',
    "Moose" => '0.70',
  },
);
