# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit lua

DESCRIPTION="A module for encoding and decoding JSON data"
HOMEPAGE="https://github.com/LuaDist/dkjson"
SRC_URI="https://github.com/LuaDist/dkjson/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	lua_install_module dkjson.lua
	dodoc readme.txt
}
