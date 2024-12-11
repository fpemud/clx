# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{11..13} )
inherit distutils-r1

DESCRIPTION="A lightweight LLVM python binding for writing JIT compilers"
HOMEPAGE="https://llvmlite.readthedocs.io/en/latest/ https://pypi.org/project/llvmlite/"
SRC_URI="https://github.com/numba/llvmlite/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="sys-devel/llvm:14"
RDEPEND="${BDEPEND}"
DEPEND="${RDEPEND}"

distutils_enable_tests pytest

python_compile() {
	export "LLVM_CONFIG=${EPREFIX}/usr/lib/llvm/14/bin/llvm-config"
	distutils-r1_python_compile
}
