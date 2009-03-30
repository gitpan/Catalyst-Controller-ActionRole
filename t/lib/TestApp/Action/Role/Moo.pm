package TestApp::Action::Role::Moo;
our $VERSION = '0.05';


use Moose::Role;

after execute => sub {
    my ($self, $controller, $c) = @_;
    $c->response->body(__PACKAGE__);
};

1;
