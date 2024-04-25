#!/usr/bin/env perl
use utf8;
use strict;
use warnings;
use feature 'say';
use open qw/:encoding(utf8) :std/;
use Data::Printer { deparse => 1, caller_info => 1 };

use Number::Iterator;

my $instance = Number::Iterator->new(interval => 50);

p $instance;

# say $instance++;# エラーになる
$instance++;
say $instance;

$instance--;
say $instance;

say $instance->iterate;

say $instance->deiterate;

my $hash = { neko => [ 1, 2, 3 ], inu => [ 4, 5, 6 ] };
for my $key (keys $hash->%*) {
    for my $animal ($hash->{$key}->@*) {
        say $animal;
    }
}
