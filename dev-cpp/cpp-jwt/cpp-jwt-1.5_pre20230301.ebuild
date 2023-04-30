# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake vcs-snapshot

DESCRIPTION="JSON Web Token library for C++"
HOMEPAGE="https://github.com/arun11299"
SRC_URI="https://github.com/arun11299/cpp-jwt/archive/10ef5735d842b31025f1257ae78899f50a40fb14.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="test? ( dev-cpp/gtest )
	dev-libs/openssl
	dev-cpp/nlohmann_json"
RDEPEND="${DEPEND}"

IUSE="examples test"
RESTRICT="!test? ( test )"
src_configure() {
	local mycmakeargs=(
		-DCPP_JWT_BUILD_EXAMPLES=$(usex examples)
		-DCPP_JWT_BUILD_TESTS=$(usex test)
	)
	cmake_src_configure
}
