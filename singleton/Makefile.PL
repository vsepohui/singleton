use ExtUtils::MakeMaker;
use strict;
use warnings;

# Call 'perldoc ExtUtils::MakeMaker' for details of how to influence
# the contents of the Makefile that is written.

my %WriteMakefileArgs = (
    NAME                => 'singleton',
    VERSION_FROM        => 'lib/singleton.pm',
    AUTHOR              => 'Ivan Trunaev (kosherny@cpan.org)',
    ABSTRACT            => 'Class realized singleton construnctor',
    INSTALLDIRS         => ($] < 5.011 ? 'perl' : 'site'),
    PREREQ_PM           => {
        'Test::Simple' => 0.44,
    },
    ( eval { ExtUtils::MakeMaker->VERSION(6.46) } ? () : ( META_MERGE => {
        'meta-spec' => { version => 2 },
        dynamic_config => 1,
        #resources => {
        #    homepage    => undef,
        #    repository  => {
        #        url         => undef,
        #        web         => undef,
        #        type        => undef,
        #    },
        #    bugtracker => {
        #        web         => undef,
        #    },
        #},
    })),
);

WriteMakefile(%WriteMakefileArgs);
