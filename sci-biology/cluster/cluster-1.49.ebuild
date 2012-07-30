# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
inherit autotools
SRC_URI="${P}.tar.gz"

DESCRIPTION="Clustering software for microarray analysis"
HOMEPAGE="http://bonsai.ims.u-tokyo.ac.jp/~mdehoon/software/cluster/software.htm#ctv"
LICENSE="Eisen"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="X"
SRC_URI="http://bonsai.ims.u-tokyo.ac.jp/~mdehoon/software/cluster/${PN}-${PV}.tar.gz"

DEPEND="X? ( x11-libs/openmotif )"
RDEPEND="X? ( x11-misc/xdg-utils app-text/xpdf )"



#RESTRICT="fetch"

#pkg_nofetch() {
#        einfo "Please obtain ${P}.tar.gz from ${HOMEPAGE} and place it in ${DISTDIR}"
#}

src_unpack() {
	unpack "${A}"
	cd "${S}"
	sed -i \
		-e 's:^docdir = $(prefix)/cluster/doc:docdir = @docdir@:' \
		-e 's:^htmldir = $(prefix)/cluster/html:htmldir = @htmldir@:' \
		-e 's:^imagedir = $(prefix)/cluster/html/images:imagedir = @htmldir@/images:' \
		-e 's:^fileformatdir = $(prefix)/cluster:fileformatdir = @docdir@:' \
		X11/Makefile.in || die "sed failed"

#	epatch "${FILESDIR}/${P}-helpmenu-fix.patch" || die "failed to patch helpmenu"

}

src_compile() {

	econf $(use_with X x) \
		--docdir="/usr/share/doc/${P}" \
		--htmldir="/usr/share/doc/${P}/html" \
		|| die "econf failed"

	emake || die "emake failed"
}

src_install() {
	cd ${S}
	mv src/cluster src/cluster-bio
	dobin src/cluster-bio
	dodoc README COPYING AUTHORS ChangeLog NEWS TODO doc/cluster.pdf doc/cluster3.pdf || die "failed to install docs"
	insinto /usr/share/doc/${P}/examples
	doins example/example.c example/README || die "failed to install docs"
	insinto /usr/share/doc/${P}/html
	doins  "${S}"/html/*
	insinto /usr/share/doc/${P}/html/images
	doins  "${S}"/html/images/*




}
