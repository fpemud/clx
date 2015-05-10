# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit lua

DESCRIPTION="A WebSocket implementation for Lua"
HOMEPAGE="https://github.com/mbalmer/luawebsocket"
SRC_URI="https://github.com/mbalmer/luawebsocket/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="doc"

DEPEND="dev-libs/openssl"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i '/luanet.h/d' luawebsocket.c
}

src_install() {
	lua_install_cmodule websocket.so
	use doc && dodoc luawebsocket.pdf
	dodoc README.md
}
