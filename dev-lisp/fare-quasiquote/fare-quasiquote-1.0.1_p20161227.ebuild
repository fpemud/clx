# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="c6ef2128a6ac44ba9e9cf0fb34c4ed429b988217"

DESCRIPTION="A portable quasiquote implementation that plays well with pattern-matching"
HOMEPAGE="http://cliki.net/fare-quasiquote"
SRC_URI="https://github.com/fare/fare-quasiquote/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/fare-utils
	dev-lisp/named-readtables
	dev-lisp/optima
	test? ( dev-lisp/stefil )
"

src_prepare() {
	use test || rm -rf ${PN}-test.{asd,lisp}
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all version.text
}
