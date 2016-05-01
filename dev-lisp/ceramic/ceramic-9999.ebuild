# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Desktop web apps with Common Lisp"
HOMEPAGE="http://ceramic.github.io"
SRC_URI=""

EGIT_REPO_URI="https://github.com/ceramic/ceramic.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/cl-json
	dev-lisp/clack
	dev-lisp/external-program
	dev-lisp/trivial-build
	dev-lisp/trivial-download
	dev-lisp/trivial-exe
	dev-lisp/trivial-extract
	dev-lisp/trivial-compress
	dev-lisp/electron-tools
	dev-lisp/uiop
	dev-lisp/uuid
	dev-lisp/copy-directory
	dev-lisp/remote-js
"

src_prepare() {
	use test || rm -r t ${PN}-test.asd
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all README.md
}
