# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="d9a9ecae6e1a52834cbbc50c22cbcaa975d19e75"

DESCRIPTION="A Common Lisp Wrapper for the SDL 2.0 C Library"
HOMEPAGE="https://github.com/lispgames/cl-sdl2"
SRC_URI="https://github.com/lispgames/cl-sdl2/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/alexandria
	dev-lisp/cl-autowrap
	dev-lisp/cl-ppcre
	dev-lisp/trivial-channels
	dev-lisp/trivial-features
	media-libs/libsdl2
"

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all src/spec
}
