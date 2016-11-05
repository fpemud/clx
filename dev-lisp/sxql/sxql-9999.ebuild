# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 git-r3

DESCRIPTION="A SQL generator for Common Lisp"
HOMEPAGE="https://github.com/fukamachi/sxql"
SRC_URI=""

EGIT_REPO_URI="https://github.com/fukamachi/sxql.git"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/optima
	dev-lisp/iterate
	dev-lisp/cl-syntax
	dev-lisp/trivial-types
	dev-lisp/split-sequence
	dev-lisp/alexandria
	test? ( dev-lisp/prove )
"

src_prepare() {
	eapply_user
	use test || rm -rf ${PN}-test.asd t
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all README.markdown
}
