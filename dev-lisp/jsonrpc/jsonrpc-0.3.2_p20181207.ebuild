# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

if [[ ${PV} = *9999* ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/fukamachi/jsonrpc.git"
else
	inherit vcs-snapshot
	EGIT_COMMIT="d3dbb78eff08e7e2dbf60f79c838aa1a7a45a4ff"
	SRC_URI="https://github.com/fukamachi/jsonrpc/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"
fi


DESCRIPTION="JSON-RPC 2.0 server/client for Common Lisp"
HOMEPAGE="https://github.com/fukamachi/jsonrpc"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/yason
	dev-lisp/usocket
	dev-lisp/fast-io
	dev-lisp/trivial-utf8
	dev-lisp/alexandria
	dev-lisp/uiop
	test? ( dev-lisp/rove )
"

src_prepare() {
	default
	if ! use test ; then
		sed -i '/defsystem "jsonrpc/tests"/,$d' ${PN}.asd
		rm -r tests
	fi
}
