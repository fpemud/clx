# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="2a07af344b417f9873bbd4205f766a7133f124da"

DESCRIPTION="Numpy clone in Common Lisp"
HOMEPAGE="https://github.com/numcl/numcl"
SRC_URI="https://github.com/numcl/numcl/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/trivia
	dev-lisp/alexandria
	dev-lisp/iterate
	dev-lisp/type-r
	dev-lisp/constantfold
	dev-lisp/lisp-namespace
	dev-lisp/cl-randist
	test? ( dev-lisp/fiveam )
"
BDEPEND=""

src_prepare() {
	default
	rm asd-generator-data.asd
	use test || rm -r numcl.test.asd t
}
