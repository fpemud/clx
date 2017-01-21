# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="be6055a495cca0e612dbfd64e231ff14b26580f7"

DESCRIPTION="Common Lisp machine learning library"
HOMEPAGE="https://github.com/melisgl/mgl"
SRC_URI="https://github.com/melisgl/mgl/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="example test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/alexandria
	dev-lisp/closer-mop
	dev-lisp/array-operation
	dev-lisp/lla
	dev-lisp/cl-reexport
	dev-lisp/mgl-gnuplot
	dev-lisp/mgl-mat
	dev-lisp/mgl-pax
	dev-lisp/named-readtables
	dev-lisp/pythonic-string-reader
	test? ( dev-lisp/mgl-mat[test] )
"

src_prepare() {
	use example || rm -rf ${PN}-example.asd example
	use test || rm -rf ${PN}-test.asd test
}
