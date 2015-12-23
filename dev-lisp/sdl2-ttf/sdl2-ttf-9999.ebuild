# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-2 common-lisp-3

DESCRIPTION="Bindings for sdl2_ttf using autowrap"
HOMEPAGE="A common lisp wrapper for SDL2_TTF used for loading fonts and creating text assets"
SRC_URI=""

EGIT_REPO_URI="https://github.com/bogosortist/cl-sdl2-ttf.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="example"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/alexandria
	dev-lisp/defpackage-plus
	dev-lisp/cl-autowrap
	dev-lisp/sdl2
	dev-lisp/cffi
"

src_prepare() {
	use example || rm -rf sdl2-ttf-examples.asd examples
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all src/spec
}
