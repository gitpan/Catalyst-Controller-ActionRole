package TestApp::ActionRole::Moo;
our $VERSION = '0.13';

use Moose::Role;

after execute => sub {
    my ($self, $controller, $c) = @_;
    $c->response->body(__PACKAGE__);
};

1;
