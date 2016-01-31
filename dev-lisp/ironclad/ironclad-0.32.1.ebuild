# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit common-lisp-3

#MY_P=${PN}_${PV}

DESCRIPTION="Ironclad is a Common Lisp library similar to OpenSSL, GNU TLS or Crypto++"
HOMEPAGE="http://method-combination.net/lisp/ironclad/
		http://www.cliki.net/Ironclad"
SRC_URI="mirror://github/froydnj/ironclad/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86 ~arm"
IUSE=""

RDEPEND="!dev-lisp/cl-${PN}
dev-lisp/nibbles"

#S="${WORKDIR}"/${MY_P}

src_install() {
	common-lisp-install-sources .
	common-lisp-install-asdf
	dodoc README TODO NEWS
	dohtml doc/{${PN}.html,style.css}
}
