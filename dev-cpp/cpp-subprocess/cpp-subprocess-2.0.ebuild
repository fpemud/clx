# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Subprocessing with modern C++"
HOMEPAGE="https://github.com/arun11299/cpp-subprocess"
SRC_URI="https://github.com/arun11299/cpp-subprocess/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTING=OFF
	)
	cmake_src_configure
}
