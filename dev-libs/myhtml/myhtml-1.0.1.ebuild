# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Fast C/C++ HTML 5 Parser"
HOMEPAGE="https://github.com/lexborisov/myhtml"
SRC_URI="https://github.com/lexborisov/myhtml/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dolib.so lib/lib${PN}.so
	insinto /usr
	doins -r include
	dodoc README.md
}
