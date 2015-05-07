# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit flag-o-matic git-2

DESCRIPTION="Super fast C++ logging library"
HOMEPAGE="https://github.com/gabime/spdlog"
SRC_URI=""

EGIT_REPO_URI="https://github.com/gabime/spdlog.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

pkg_pretend() {
	if ! test-flag-CXX -std=c++11 ; then
		die "C++11 need support for this library"
	fi
}

src_install() {
	insinto /usr/include
	doins -r include/spdlog
	dodoc README.md
}
