# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_8 )
inherit distutils-r1

DESCRIPTION="Bringing pjreddie's DarkNet out of the shadows"
HOMEPAGE="https://github.com/explosion/lightnet"
SRC_URI="https://github.com/explosion/lightnet/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	dev-python/msgpack
	dev-python/numpy
	dev-python/requests
	virtual/python-pathlib
"
RDEPEND="${DEPEND}"
