# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
EAPI=5

inherit common-lisp-3 vcs-snapshot

DESCRIPTION="Vecto is a simplified interface to the powerful CL-VECTORS vector rasterization library."
HOMEPAGE="http://www.xach.com/lisp/vecto/"
SRC_URI="mirror://github/xach/vecto/archive/release-${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86 ~arm"
IUSE=""

RDEPEND="
dev-lisp/cl-vectors
dev-lisp/zpb-ttf
dev-lisp/zpng
"

