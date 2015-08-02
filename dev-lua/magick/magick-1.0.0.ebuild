# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit lua

DESCRIPTION="Lua bindings to ImageMagick for LuaJIT using FFI"
HOMEPAGE="https://github.com/leafo/magick"
SRC_URI="https://github.com/leafo/magick/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	rm magick/init.moon
}

src_compile() {
	:
}

src_install() {
	lua_install_module -r magick magick.lua
}
