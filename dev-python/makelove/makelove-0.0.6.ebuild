# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_1{1..2} )

inherit distutils-r1

DESCRIPTION="A packaging tool for löve games"
HOMEPAGE="https://github.com/pfirsich/makelove"
SRC_URI="https://github.com/pfirsich/makelove/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-python/pillow-7.0[${PYTHON_USEDEP}]
	>=dev-python/appdirs-1.4.3[${PYTHON_USEDEP}]
	>=dev-python/toml-0.10[${PYTHON_USEDEP}]
"
BDEPEND=""

distutils_enable_tests pytest
