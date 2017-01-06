# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit common-lisp-3 git-2

DESCRIPTION="A portable quasiquote implementation that plays well with pattern-matching"
HOMEPAGE="http://cliki.net/fare-quasiquote"
SRC_URI=""

EGIT_REPO_URI="https://github.com/fare/fare-quasiquote.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all version.text
}
