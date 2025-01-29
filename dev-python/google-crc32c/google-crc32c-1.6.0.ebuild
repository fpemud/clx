# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1

DESCRIPTION="A python wrapper of the C library 'Google CRC32C'"
HOMEPAGE="
	https://pypi.org/project/google-crc32c/
	https://github.com/googleapis/python-crc32c/
"
SRC_URI="
	https://github.com/googleapis/python-crc32c/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-libs/crc32c
"
#BDEPEND="
#	test? (
#	)
#"

distutils_enable_tests pytest

S="${WORKDIR}"/python-crc32c-${PV}

export CRC32C_PURE_PYTHON=false

