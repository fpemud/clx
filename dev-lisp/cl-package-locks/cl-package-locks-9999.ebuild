# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit common-lisp-3 git-2

DESCRIPTION="A compatability layer for dealing with package locks in a uniform manner"
HOMEPAGE="https://github.com/elliottjohnson/cl-package-locks"
SRC_URI=""

EGIT_REPO_URI="https://github.com/elliottjohnson/cl-package-locks.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
