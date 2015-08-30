# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="Library to turn SEXPs into a Plump-DOM and back"
HOMEPAGE="https://github.com/Shinmera/plump-sexp"
SRC_URI=""

EGIT_REPO_URI="https://github.com/Shinmera/plump-sexp.git"

LICENSE="Artistic"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-lisp/plump
"
