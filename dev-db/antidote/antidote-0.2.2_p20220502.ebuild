# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit vcs-snapshot

EGIT_COMMIT="a9b4ddc146ad9d7dd61fb2b4c7cc86ad9ac22976"

DESCRIPTION="A planet scale, highly available, transactional database"
HOMEPAGE="https://www.antidotedb.eu"
SRC_URI="https://github.com/AntidoteDB/antidote/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT=network-sandbox

src_compile() {
	rebar3 release
}

src_install() {
	insinto /usr/lib
	doins -r _build/default/rel/antidote
	dosym ../lib/antidote/bin/antidote /usr/bin/antidote
	dodoc README.md
}
