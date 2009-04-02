package TestApp::Controller::ActionClass;
our $VERSION = '0.08';

use strict; use warnings;
use Moose;
BEGIN { extends 'Catalyst::Controller::ActionRole'; }

sub one : Local ActionClass('TestActionClass') {}

1;
