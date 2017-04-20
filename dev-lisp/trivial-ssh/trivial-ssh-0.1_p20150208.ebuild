# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit common-lisp-3 git-r3

EGIT_COMMIT="8c6a381d0b556d072bceea804402068c1798bf3e"

DESCRIPTION="An SSH client library for Common Lisp"
HOMEPAGE="https://github.com/eudoxia0/trivial-ssh"
SRC_URI="https://github.com/eudoxia0/trivial-ssh/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/cffi
	dev-lisp/usocket
	dev-lisp/cl-fad
	dev-lisp/trivial-graystreams
	dev-lisp/babel
	dev-lisp/split-sequence
"

src_prepare() {
	use test || rm -f ${PN}-test.asd t
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all README.md
}
