# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit rebar

DESCRIPTION="Kafka protocol erlang library"
HOMEPAGE="https://github.com/klarna/kafka_protocol"
SRC_URI="https://github.com/klarna/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

RDEPEND="
	>=dev-erlang/snappyer-1.2.4
	>=dev-erlang/crc32cer-0.1.3
	>=dev-lang/erlang-17.1"
DEPEND="${RDEPEND}"


src_prepare() {
	eapply_user
	rebar_src_prepare
	rebar_fix_include_path snappyer
	rebar_fix_include_path crc32cer
}
