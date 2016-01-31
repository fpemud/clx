# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit common-lisp-3

DESCRIPTION="CL-JavaScript is a JavaScript programming language compiler for Common Lisp."
HOMEPAGE="http://marijnhaverbeke.nl/cl-javascript/ http://github.com/akapav/js"
SRC_URI="mirror://github/akapav/js/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-lisp/parse-js"

S="${WORKDIR}/js-${PV}"
