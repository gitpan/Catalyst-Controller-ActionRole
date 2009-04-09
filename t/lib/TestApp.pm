package TestApp;
our $VERSION = '0.10';


use Moose;

use namespace::clean -except => 'meta';

extends 'Catalyst';

__PACKAGE__->setup;

1;
