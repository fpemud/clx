# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="7d03c68dad44f1cc4ac2aeeab2d24eb525ad941a"

DESCRIPTION="libev bindings for Common Lisp"
HOMEPAGE="https://github.com/fukamachi/lev"
SRC_URI="https://github.com/fukamachi/lev/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-libs/libev
	dev-lisp/cffi
"

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all src README.md
}
