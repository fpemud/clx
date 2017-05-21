# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit vcs-snapshot

EGIT_COMMIT="d7c6dd803f3e30b15e1870ac92809a594918bfc0"

DESCRIPTION="libco is a coroutine library which is widely used in wechat back-end service"
HOMEPAGE="https://github.com/Tencent/libco"
SRC_URI="https://github.com/Tencent/libco/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake colib
}

src_install() {
	dolib.so solib/libcolib.so
	insinto /usr/include
	doins co_routine.h co_routine_inner.h co_routine_specific.h co_closure.h coctx.h
	dodoc README.md
}
