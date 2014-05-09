use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006007
use Test::Spelling 0.12;
use Pod::Wordlist;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
Florian
Ragwitz
rafl
Alex
Burzyński
ajgb
Hans
Dieter
Pearcey
hdp
Jason
Kohles
email
John
Napiorkowski
jjnapiork
Karen
Etheridge
ether
NAKAGAWA
Masaki
masaki
Tomas
Doran
bobtfish
William
King
william
lib
Catalyst
Controller
ActionRole
