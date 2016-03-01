# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="S-expression to OpenCL C"
HOMEPAGE="https://github.com/gos-k/oclcl"
SRC_URI=""

EGIT_REPO_URI="https://github.com/gos-k/oclcl.git"

LICENSE="LLGPL"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="example test"

DEPEND=""
RDEPEND="${DEPEND}
	virtual/opencl
	dev-lisp/alexandria
	dev-lisp/cffi
	dev-lisp/external-program
	dev-lisp/osicat
	dev-lisp/cl-pattern
	dev-lisp/split-sequence
	dev-lisp/cl-reexport
	dev-lisp/cl-ppcre
"

src_prepare() {
	use example || rm -r examples ${PN}-examples.asd
	use test || rm -r tests ${PN}-test.asd
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all README.markdown
}
