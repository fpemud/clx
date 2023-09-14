# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3

DESCRIPTION="Gives access to multiple-value variants of operators through one macro"
HOMEPAGE="https://github.com/Hexstream/multiple-value-variants"
SRC_URI="https://github.com/Hexstream/multiple-value-variants/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/definitions-systems
	dev-lisp/map-bind
	dev-lisp/positional-lambda
	dev-lisp/enhanced-multiple-value-bind
	test? ( dev-lisp/parachute )
"
BDEPEND=""

src_prepare() {
	default
	use test || rm -r tests
}
