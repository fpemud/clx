# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="A Redis HTTP interface with JSON output"
HOMEPAGE="http://webd.is"
SRC_URI="mirror://github/nicolasff/webdis/archive/0.1.1.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-libs/libevent
"

src_prepare() {
	sed -e '/CFLAGS/ s/?=/+=/' \
		-e '/LDFLAGS/ s/?=/+=/' \
		-e '/MSGPACK_LIB/,/endif/d' \
		-i Makefile
}

src_install() {
	make DESTDIR="${D}" PREFIX=/usr install || die "install failed"
}
