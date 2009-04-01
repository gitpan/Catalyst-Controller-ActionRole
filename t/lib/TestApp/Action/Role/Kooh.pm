package TestApp::Action::Role::Kooh;
our $VERSION = '0.07';


use Moose::Role;

use namespace::clean -except => 'meta';

after execute => sub {
    my ($self, $controller, $c) = @_;
    $c->response->header('X-Affe' => 'Tiger');
};

1;
