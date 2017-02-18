# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="f91fac908a381d9c748feedff0c305621e9eddcb"

DESCRIPTION="A fast HTTP request/response parser for Common Lisp"
HOMEPAGE="https://github.com/fukamachi/fast-http"
SRC_URI="https://github.com/fukamachi/fast-http/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/alexandria
	dev-lisp/cl-utilities
	dev-lisp/proc-parse
	dev-lisp/babel
	dev-lisp/xsubseq
	dev-lisp/log4cl
	dev-lisp/smart-buffer
	test? ( dev-lisp/cl-syntax dev-lisp/prove )
"

src_prepare() {
	use test || rm -r ${PN}-test.asd t
}

src_install() {
	common-lisp-install-sources -t all README.markdown
	common-lisp-3_src_install
}
