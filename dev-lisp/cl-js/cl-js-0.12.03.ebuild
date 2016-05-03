# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit common-lisp-3

DESCRIPTION="CL-JavaScript is a JavaScript programming language compiler for Common Lisp."
HOMEPAGE="http://marijnhaverbeke.nl/cl-javascript/ http://github.com/akapav/js"
SRC_URI="https://github.com/akapav/js/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-lisp/parse-js"

S="${WORKDIR}/js-${PV}"
