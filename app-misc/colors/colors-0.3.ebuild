# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="extract colors from pictures"
HOMEPAGE="http://git.2f30.org/colors/"
SRC_URI="http://git.2f30.org/colors/snapshot/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	sed -i -e '/PREFIX/ s#/local##' \
		-e '/MANPREFIX =/ s#/man#/share/man#' \
		Makefile
}
