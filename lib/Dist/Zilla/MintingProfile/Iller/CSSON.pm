use strict;
use warnings;
package Dist::Zilla::MintingProfile::Iller::CSSON;

# VERSION:
# ABSTRACT: CSSON's Dist::Zilla minting profile for Dist::Iller

use Moose;
with 'Dist::Zilla::Role::MintingProfile';
use File::ShareDir;
use Path::Class;
use Carp;
use namespace::autoclean;

sub profile_dir {
    my $self = shift;
    my $profile_name = shift;

    my $dist_name = 'Dist-Zilla-MintingProfile-Iller-CSSON';
    my $profile_dir = dir(File::ShareDir::dist_dir($dist_name))->subdir($profile_name);

    return $profile_dir if -d $profile_dir;

    confess "Can't find profile $profile_name in $profile_dir";
}

__PACKAGE__->meta->make_immutable;

1;
