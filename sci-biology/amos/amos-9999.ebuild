# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
[ "$PV" == "9999" ] && inherit cvs

inherit eutils

DESCRIPTION="AMOS genome assembly package live cvs sources"
HOMEPAGE="http://sourceforge.net/projects/amos"
ECVS_SERVER="amos.cvs.sourceforge.net:/cvsroot/amos"
ECVS_AUTH="pserver"
ECVS_MODULE="AMOS"
ECVS_BRANCH="HEAD"
ECVS_USER="anonymous"
ECVS_PASS=""

LICENSE="GPL-2"
SLOT="0"
IUSE=""
KEYWORDS="~amd64 ~x86"

#DEPEND=">=x11-libs/qt-3.3:3"
DEPEND="dev-vcs/cvs
		dev-libs/boost
		x11-libs/qt-qt3support"
RDEPEND="${DEPEND}
		dev-perl/DBI
		sci-biology/mummer"

S="${DISTDIR}"/cvs-src/AMOS/AMOS/

src_unpack() {
	ECVS_TOP_DIR="${DISTDIR}/cvs-src/${ECVS_MODULE}"
	cvs_src_unpack
	cd "${S}" || die
	epatch "${FILESDIR}"/amos.m4.patch || die
}

src_configure() {
	./bootstrap || die
	CFLAGS=$CFLAGS' -I/usr/include/qt4/Qt' CXXFLAGS=$CXXFLAGS' -I/usr/include/qt4/Qt' econf --enable-all --with-Qt-include-dir=/usr/include/qt4 --with-Qt-lib-dir=/usr/lib/qt4 --with-Qt-bin-dir=/usr/bin --with-Qt-lib=Qt3Support
}

src_compile() {
	# TODO: force MAKEOPTS=-j1 because it seems -j6 is exploting some dependency issue in Makefiles
	MAKEOPTS=-j1 emake DESTDIR="${D}" || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
