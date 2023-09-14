# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="The fastest WebAssembly interpreter, and the most universal runtime"
HOMEPAGE="https://github.com/wasm3/wasm3"
SRC_URI="https://github.com/wasm3/wasm3/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DBUILD_WASI=simple
	)
	cmake_src_configure
}

src_install() {
	dobin ${BUILD_DIR}/wasm3
}
