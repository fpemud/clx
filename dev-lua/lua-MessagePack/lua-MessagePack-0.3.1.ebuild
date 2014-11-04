# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="lua-MessagePack : a pure Lua implementation"
HOMEPAGE="http://fperrad.github.io/lua-MessagePack/"
SRC_URI="https://github.com/fperrad/lua-MessagePack/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="|| ( =dev-lang/lua-5.1 dev-lang/luajit )"
RDEPEND="${DEPEND}"

src_install() {
	emake PREFIX="${D}"/usr install
}
