# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

DESCRIPTION="Dogtag Certificate System - Certificate Authority User Interface"
HOMEPAGE="http://pki.fedoraproject.org"
SRC_URI="http://pki.fedoraproject.org/pki/sources/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {

	dodir /usr/share/pki/ca-ui/webapps/ca/
	insinto /usr/share/pki/ca-ui/webapps/ca/
	cd  "${S}"/shared/webapps/
	doins -r .
	dodir /usr/share/pki/ca-ui/webapps/ROOT/
}
