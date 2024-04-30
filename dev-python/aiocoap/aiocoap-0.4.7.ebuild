# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..12} pypy3 )

inherit distutils-r1

DESCRIPTION="Python CoAP library"
HOMEPAGE="https://github.com/chrysn/aiocoap"
SRC_URI="https://github.com/chrysn/aiocoap/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND=""

RESTRICT="test"
