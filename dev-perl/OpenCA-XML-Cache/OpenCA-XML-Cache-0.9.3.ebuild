# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit perl-module

DESCRIPTION="Perl module to cache the configuration files of OpenCA"
HOMEPAGE="http://search.cpan.org/~madwolf/OpenCA-XML-Cache-0.9.52/"
SRC_URI="mirror://cpan/authors/id/M/MA/MADWOLF/${P}.tar.gz"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-perl/XML-Twig"
RDEPEND="${DEPEND}"
