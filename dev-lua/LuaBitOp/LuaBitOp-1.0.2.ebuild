# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
inherit lua

DESCRIPTION="Bit Operations Library for the Lua Programming Language"
HOMEPAGE="http://bitop.luajit.org"
SRC_URI="http://bitop.luajit.org/download/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="|| ( >=dev-lang/lua-5.1 dev-lang/luajit:2 )"
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i \
		-e '/^CFLAGS.*=/s/=/ +=/' \
		-e '/^CFLAGS/s/-O2 -fomit-frame-pointer //' \
		Makefile || die "sed failed"
}

src_compile() {
	emake CC="$(tc-getCC)"
}

src_test() {
	make test
}

src_install() {
	lua_install_cmodule bit.so
	dohtml -r doc/*
}
