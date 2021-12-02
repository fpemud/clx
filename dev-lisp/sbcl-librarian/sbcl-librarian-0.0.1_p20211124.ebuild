# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="a31feefcdf028cfea1a7d3e108308bace3af03bb"

DESCRIPTION="Dynamic library delivery tools for SBCL"
HOMEPAGE="https://github.com/quil-lang/sbcl-librarian"
SRC_URI="https://github.com/quil-lang/sbcl-librarian/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
