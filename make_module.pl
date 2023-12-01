#!/usr/bin/perl

use ExtUtils::ModuleMaker;

$mod = ExtUtils::ModuleMaker->new(
  NAME => 'singleton',
  ABSTRACT => 'Class realized singleton construnctor',
  VERSION => '1',
  LICENSE => 'perl', # You can choose one of the standard licenses by includin
  BUILD_SYSTEM => 'ExtUtils::MakeMaker',
  NEED_POD => '0', # Include POD section in *.pm files created. (Default is on
  NEED_NEW_METHOD => '0', # Include a simple new() method in the *.pm files cr
  INCLUDE_TODO => '0',
  INCLUDE_SCRIPTS_DIRECTORY => '0',
  AUTHOR => 'Ivan Trunaev',
  EMAIL => 'kosherny@cpan.org',
  CPANID => 'KOSHERNY',
  WEBSITE => 'https://kosherny.site',
  FIRST_TEST_NUMBER => '1',
);

$mod->complete_build();
