#!/usr/bin/env perl

#      $URL: http://perlcritic.tigris.org/svn/perlcritic/trunk/distributions/PPIx-Utilities/xt/author/pod_coverage.t $
#     $Date: 2010-02-21 18:29:33 -0600 (Sun, 21 Feb 2010) $
#   $Author: clonezone $
# $Revision: 3777 $

use 5.006;

use strict;
use warnings;

our $VERSION = '1.000';

use Test::More;
use Test::Pod::Coverage;

my @trusted_methods = qw<
    description
>;

my $method_string = join q< | >, @trusted_methods;
my $regex = qr< \A (?: $method_string ) \z >xms;
all_pod_coverage_ok( { trustme => [$regex] } );

# Local Variables:
#   mode: cperl
#   cperl-indent-level: 4
#   fill-column: 78
#   indent-tabs-mode: nil
#   c-indentation-style: bsd
# End:
# setup vim: set filetype=perl tabstop=4 softtabstop=4 expandtab :
# setup vim: set shiftwidth=4 shiftround textwidth=78 nowrap autoindent :
# setup vim: set foldmethod=indent foldlevel=0 :
