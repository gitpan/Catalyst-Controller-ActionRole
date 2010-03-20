package TestAppREST::Controller::Foo;
our $VERSION = '0.13';
use Moose;
use namespace::clean -except => 'meta';

BEGIN { extends 'Catalyst::Controller::ActionRole'; }

sub foo  : Local Does('Moo') ActionClass('REST') {}

sub foo_GET {}

1;
