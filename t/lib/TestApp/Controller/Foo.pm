package TestApp::Controller::Foo;
our $VERSION = '0.02';


use Moose;

BEGIN { extends 'Catalyst::Controller::ActionRole'; }

__PACKAGE__->config(
    action_roles => ['~Kooh']
);

sub foo : Local Does('Moo') {}
sub bar : Local Does('~Moo') {}
sub baz : Local Does('+Moo') {}

1;
