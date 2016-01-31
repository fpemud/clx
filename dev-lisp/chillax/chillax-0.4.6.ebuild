# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit common-lisp-3

DESCRIPTION="CouchDB abstraction layer for Common Lisp"
HOMEPAGE="https://github.com/sykopomp/chillax"
SRC_URI="mirror://github/sykopomp/chillax/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-db/couchdb
dev-lisp/alexandria
dev-lisp/flexi-streams
dev-lisp/drakma
dev-lisp/jsown
dev-lisp/yason"

