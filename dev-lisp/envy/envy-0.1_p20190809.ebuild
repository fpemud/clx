# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="956321b2852d58ba71c6fe621f5c2924178e9f88"

DESCRIPTION="Configuration switcher by an environment variable inspired by Config::ENV"
HOMEPAGE="https://github.com/fukamachi/envy"
SRC_URI="https://github.com/fukamachi/envy/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	test? ( dev-lisp/cl-test-more dev-lisp/osicat )
"

src_prepare() {
	default
	use test || rm -r ${PN}-test.asd t
}

src_install() {
	common-lisp-3_src_install
	common-lisp-install-sources -t all README.markdown
}
