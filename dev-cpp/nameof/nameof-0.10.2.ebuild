# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Nameof operator for modern C++"
HOMEPAGE="https://github.com/Neargye/nameof"
SRC_URI="https://github.com/Neargye/nameof/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DNAMEOF_OPT_BUILD_EXAMPLES=OFF
		-DNAMEOF_OPT_BUILD_TESTS=OFF
	)
	cmake_src_configure
}
