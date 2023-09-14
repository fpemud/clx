# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=8

inherit common-lisp-3 git-r3

DESCRIPTION="Generate random numbers in a cryptographically-acceptable way"
HOMEPAGE="https://github.com/death/srandom"
SRC_URI=""

EGIT_REPO_URI="https://github.com/death/srandom.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
