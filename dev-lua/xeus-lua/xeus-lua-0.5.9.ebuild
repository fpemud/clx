# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="Jupyter kernel for Lua"
HOMEPAGE="https://github.com/jupyter-xeus/xeus-lua"
SRC_URI="https://github.com/jupyter-xeus/xeus-lua/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-cpp/xeus
	dev-cpp/xtl
	dev-cpp/xwidgets
	dev-lang/lua
"
RDEPEND="${DEPEND}"
BDEPEND=""
