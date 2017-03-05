# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils

DESCRIPTION="modern, simple, easy to use rpc framework"
HOMEPAGE="https://github.com/topcpporg/rest_rpc"
SRC_URI="https://github.com/topcpporg/rest_rpc/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND="
	dev-cpp/Kapok
	dev-cpp/spdlog
	dev-cpp/thread-pool-cpp
	dev-libs/boost[context]
"
RDEPEND="${DEPEND}"
