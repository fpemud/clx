# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit rebar3

DESCRIPTION="walk the fine line between Erlang app.configs and a sysctl-like syntax"
HOMEPAGE="https://github.com/Kyorai/cuttlefish"
SRC_URI="https://github.com/Kyorai/cuttlefish/archive/v2.1.4.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-erlang/getopt
	>=dev-erlang/lager-3.6.0
"
BDEPEND=""

src_compile() {
	erebar escriptize
}
	
src_install() {
	dobin _build/default/bin/cuttlefish
	dodoc README.md
}
