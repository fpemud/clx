# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="a library to verify and create signatures of e-mail headers"
HOMEPAGE="http://libdkim.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.zip"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/openssl
	app-arch/unzip"
RDEPEND="!mail-filter/libdkim-exim
	dev-libs/openssl"

S=${WORKDIR}/${PN}/src

src_prepare() {
	# upstream claims to be portable, but isn't very
	epatch "${FILESDIR}/${PN}-gentoo.patch" \
	       "${FILESDIR}/${PN}-extra-options.patch"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	dodoc ../README || die "Install README failed"
}
