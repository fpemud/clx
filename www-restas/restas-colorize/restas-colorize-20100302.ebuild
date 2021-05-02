# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3 eutils

DESCRIPTION="Pastebin plugin for RESTAS application server"
HOMEPAGE="http://github.com/archimag/restas-colorize"
SRC_URI="http://cloud.github.com/downloads/archimag/restas-colorize/${P}.tar.bz2"

LICENSE="LLGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86"
IUSE=""

RDEPEND=">=dev-lisp/restas-0.0.4
		 dev-lisp/cl-closure-template
		 dev-lisp/colorize
		 dev-lisp/local-time"

CLSYSTEMS="${PN}"

src_install() {
	common-lisp-3_src_install
	common-lisp-install -t all resources
}

