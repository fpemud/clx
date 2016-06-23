# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

MY_PN=BitArray
MY_P=${MY_PN}-${PV}

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://github.com/noporpoise/BitArray/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"/${MY_P}

src_install() {
	insinto /usr/include
	doins bar.h bit_array.h bit_macros.h
	dolib.a libbitarr.a
	dodoc README.md
}
