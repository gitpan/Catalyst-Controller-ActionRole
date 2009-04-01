package Catalyst::Action::Role::Moo;
our $VERSION = '0.07';


use Moose::Role;

use namespace::clean -except => 'meta';

after execute => sub {
    my ($self, $controller, $c) = @_;
    $c->response->body(__PACKAGE__);
};

1;
