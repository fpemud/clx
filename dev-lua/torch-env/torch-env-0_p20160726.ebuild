# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit lua vcs-snapshot

EGIT_COMMIT="d28424ac5b638686410304c60c31693849f3d1dd"

DESCRIPTION="Sets up default torch environment"
HOMEPAGE="https://github.com/torch/env"
SRC_URI="https://github.com/torch/env/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	sci-libs/torch7
	sci-libs/torch-dok
"
RDEPEND="${DEPEND}"

src_install() {
	insinto $(lua_get_sharedir)/env
	doins init.lua
}
