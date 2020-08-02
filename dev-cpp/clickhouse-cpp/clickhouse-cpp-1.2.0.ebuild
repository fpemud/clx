# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="C++ client library for ClickHouse"
HOMEPAGE="https://github.com/ClickHouse/clickhouse-cpp"
SRC_URI="https://github.com/ClickHouse/clickhouse-cpp/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
