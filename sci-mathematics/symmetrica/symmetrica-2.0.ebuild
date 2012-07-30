# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="A collection of routine to handle a variety of topics"
HOMEPAGE="http://www.neu.uni-bayreuth.de/de/Uni_Bayreuth/Fakultaeten/1_Mathematik_Physik_und_Informatik/Fachgruppe_Informatik/prof_diskrete_algorithmen/en/research/SYMMETRICA/index.html"
SRC_URI="http://www.neu.uni-bayreuth.de/de/Uni_Bayreuth/Fakultaeten/1_Mathematik_Physik_und_Informatik/Fachgruppe_Informatik/prof_diskrete_algorithmen/en/research/SYMMETRICA/SYM2_0_tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86 ~ppc64"
IUSE=""

#### Remove the following line when moving this ebuild to the main tree!
RESTRICT="mirror"

RDEPEND=""
DEPEND=""

S="${WORKDIR}"

src_unpack() {
	cd "${S}"
#	unpack ${A} actually doesn't work with this archive. Not sure why.
	tar xfz "${DISTDIR}/SYM2_0_tar.gz"

#	symmetrica by itself is just a bunch of files and a few headers
#	plus documentation that you can use as you wish in your programs.
#	For sage and ease of use we make it into a library with the following
#	makefile (developped by F. Bissey and T. Abbott (sage on debian).
	cp "${FILESDIR}/makefile" "${S}/makefile"
}

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"

#	symmetrica's documentation are just text files with a ".doc" extension.
	dodoc README *.doc
}

