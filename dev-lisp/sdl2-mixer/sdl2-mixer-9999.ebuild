# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="SDL_mixer wrapper"
HOMEPAGE="https://github.com/lispgames/cl-sdl2-mixer"
SRC_URI=""

EGIT_REPO_URI="https://github.com/lispgames/cl-sdl2-mixer.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-lisp/alexandria
dev-lisp/defpackage-plus
dev-lisp/cl-autowrap
dev-lisp/sdl2
media-libs/sdl2-mixer
"
