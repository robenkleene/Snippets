#!/usr/bin/perl

$color="\e[1;31m";
$reset="\e[0m";

while(<>) {
	s/(this)/$color$1$reset/;
  	print $_;
}
