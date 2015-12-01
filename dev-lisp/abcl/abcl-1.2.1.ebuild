# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils java-pkg-2 java-ant-2

MY_P=${PN}-src-${PV}

DESCRIPTION="Armed Bear Common Lisp is a Common Lisp implementation for the JVM."
HOMEPAGE="http://common-lisp.net/project/armedbear/"
SRC_URI="http://abcl.org/releases/1.2.1/abcl-src-${PV}.tar.gz"
RESTRICT="mirror"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~sparc ~x86 ~arm"
IUSE="jad"

DEPEND=">=virtual/jdk-1.5"
RDEPEND=">=virtual/jre-1.5
	jad? ( dev-java/jad-bin )"

S="${WORKDIR}"/${MY_P}

src_compile() {
	eant abcl.compile || die "Can't compile ABCL"
	eant abcl.jar || die "Can't make ABCL jar archive"
}

src_install() {
	java-pkg_dojar dist/abcl.jar
	java-pkg_dolauncher ${PN} --java_args "-server -Xrs" --main org.armedbear.lisp.Main
	dodoc README || die "Can't install README"
}
