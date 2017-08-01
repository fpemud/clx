# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils vcs-snapshot

EGIT_COMMIT="43c73a600f90b4bb042a1be6eae0cac455a66afd"

DESCRIPTION="PostgreSQL connector for sqlpp11 library"
HOMEPAGE="https://github.com/matthijs/sqlpp11-connector-postgresql"
SRC_URI="https://github.com/matthijs/sqlpp11-connector-postgresql/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="
	dev-cpp/sqlpp11
	dev-db/postgresql
"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
	-DSQLPP11_INCLUDE_DIR=/usr/include
	-DDATE_INCLUDE_DIR=/usr/include
	)
	cmake-utils_src_configure
}
