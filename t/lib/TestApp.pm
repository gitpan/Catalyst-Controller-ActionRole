package TestApp;
our $VERSION = '0.05';


use Moose;

use namespace::clean -except => 'meta';

extends 'Catalyst';

__PACKAGE__->setup;

1;
