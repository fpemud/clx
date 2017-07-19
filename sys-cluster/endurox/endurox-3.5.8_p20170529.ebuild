# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils vcs-snapshot

EGIT_COMMIT="eb7ea13686523e7ea2803a2c9de8d3512716c209"

DESCRIPTION="Enduro/X Middleware Platform for Distributed Transaction Processing"
HOMEPAGE="https://github.com/endurox-dev/endurox"
SRC_URI="https://github.com/endurox-dev/endurox/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="debug doc gpg"

DEPEND="
	doc? ( app-text/asciidoc )
	gpg? ( app-crypt/gpgme )
"
RDEPEND="${DEPEND}"

CMAKE_IN_SOURCE_BUILD=yes

src_prepare() {
	eapply_user
	sed -i '/#\ Install\ bin,\ scripts/,$d' xadmin/CMakeLists.txt
}

src_configure() {
	local mycmakeargs=(
	-DDEFINE_RELEASEBUILD=$(usex !debug)
	-DNDRX_MEMORY_DEBUG=$(usex debug)
	-DDEFINE_DISABLEGPGME=$(usex !gpg)
	-DDEFINE_DISABLEDOC=$(usex !doc)
	-DDEFINE_DISABLEPSCRIPT=ON
	)
	cmake-utils_src_configure
}
