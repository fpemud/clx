# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-2

DESCRIPTION="A small C compiler"
HOMEPAGE="http://litcave.rudi.ir/"
SRC_URI=""

EGIT_REPO_URI="http://repo.or.cz/neatcc.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dobin npp ncc
	dodoc README
}
