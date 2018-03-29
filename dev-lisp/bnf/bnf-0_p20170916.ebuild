# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="e2a1ac068e45fe9d8407a5fe9426b5eae2225780"

DESCRIPTION="BNF example generator"
HOMEPAGE="https://github.com/hyotang666/bnf"
SRC_URI="https://github.com/hyotang666/bnf/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/trestrul
	test? ( dev-lisp/jingoh )
"

src_prepare() {
	eapply_user
	use test || rm -r spec
}
