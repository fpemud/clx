# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit rebar3

DESCRIPTION="CRDT implementations to use with Antidote"
HOMEPAGE="https://github.com/AntidoteDB/antidote_crdt"
SRC_URI="https://github.com/AntidoteDB/antidote_crdt/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
