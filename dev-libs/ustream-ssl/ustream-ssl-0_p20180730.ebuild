# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit cmake-utils vcs-snapshot

EGIT_COMMIT="23a3f2830341acd1db149175baf7315a33bd0edb"

DESCRIPTION="library for SSL over ustream"
HOMEPAGE="http://wiki.openwrt.org/"
SRC_URI="https://git.openwrt.org/?p=project/ustream-ssl.git;a=snapshot;h=${EGIT_COMMIT};sf=tgz -> ${P}.tar.gz"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE="mbedtls"

RDEPEND="
	dev-libs/libubox
	mbedtls? ( net-libs/mbedtls )
	!mbedtls? ( dev-libs/openssl )
"

src_prepare() {
	default
	sed -i 's/-Werror //' CMakeLists.txt
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
	-DMBEDTLS=$(usex mbedtls)
	)
	cmake-utils_src_configure
}
