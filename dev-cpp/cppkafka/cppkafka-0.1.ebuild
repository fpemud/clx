# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="C++11 wrapper for rdkafka"
HOMEPAGE="https://github.com/mfontanini/cppkafka"
SRC_URI="https://github.com/mfontanini/cppkafka/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="
	dev-libs/boost
	>=dev-libs/librdkafka-0.9.1
"
RDEPEND="${DEPEND}"

src_prepare() {
	eapply_user
	sed -i "/install/,\${s#lib#$(get_libdir)#}" src/CMakeLists.txt || die
}
