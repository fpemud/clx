# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="04d6df5d0b736f968cb0b838b38a8a517569d2f8"

DESCRIPTION="The Common Lisp Omnificent GUI"
HOMEPAGE="https://github.com/rabbibotton/clog"
SRC_URI="https://github.com/rabbibotton/clog/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/clack
	dev-lisp/websocket-driver
	dev-lisp/alexandria
	dev-lisp/hunchentoot
	dev-lisp/cl-ppcre
	dev-lisp/bordeaux-threads
	dev-lisp/trivial-open-browser
	dev-lisp/parse-float
	dev-lisp/quri
	dev-lisp/lack
	dev-lisp/mgl-pax
	dev-lisp/cl-template
	dev-lisp/atomics
	dev-lisp/cl-sqlite
	dev-lisp/cl-dbi
	dev-lisp/cl-pass
	dev-lisp/cl-isaac
"
BDEPEND=""

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all static-files
}
