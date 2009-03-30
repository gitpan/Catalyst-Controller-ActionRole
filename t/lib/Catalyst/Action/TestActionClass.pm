package Catalyst::Action::TestActionClass;
our $VERSION = '0.05';

use parent 'Catalyst::Action';

sub execute {
    my ( $self, $controller, $c ) = @_;
    $c->response->body(__PACKAGE__);
};

1;
