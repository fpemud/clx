# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_1{1..2} )

inherit distutils-r1

DESCRIPTION="Asyncer, async and await, focused on developer experience"
HOMEPAGE="https://github.com/tiangolo/asyncer"
SRC_URI="https://github.com/tiangolo/asyncer/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-python/anyio-3.4.0[${PYTHON_USEDEP}]
"
#BDEPEND="
#	test? (
#	)
#"

#distutils_enable_tests pytest
