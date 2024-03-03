# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit rebar

DESCRIPTION="Erlang hooks library"
HOMEPAGE="https://github.com/nomasystems/nhooks"
SRC_URI="https://github.com/nomasystems/nhooks/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_prepare() {
	default
	eapply "${FILESDIR}"/nhooks-1.0.0-erlfmt.patch
	rebar_src_prepare
}
