# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils

DESCRIPTION="C++ backend for the bqplot 2-D plotting library"
HOMEPAGE="https://github.com/QuantStack/xplot"
SRC_URI="https://github.com/QuantStack/xplot/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-cpp/xeus
	dev-cpp/xtl
	dev-cpp/xwidgets
"
RDEPEND="${DEPEND}"
