# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3

DESCRIPTION="Matrix Algebra proGrams In Common Lisp"
HOMEPAGE="https://github.com/rigetticomputing/magicl"
SRC_URI="https://github.com/rigetticomputing/magicl/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="example test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/alexandria
	dev-lisp/cffi
	virtual/blas
	virtual/lapack
	test? ( dev-lisp/fiasco )
"

src_prepare() {
	eapply_user
	use example || rm ${PN}-examples.asd examples.lisp
	use test || rm -r ${PN}-tests.asd tests
}
