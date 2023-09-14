# Copyright 2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="37e5d93f7b55d49b039ecd711bdb512994f607fb"

DESCRIPTION="MAT is library for working with multi-dimensional arrays which supports efficient interfacing to foreign and CUDA code"
HOMEPAGE="https://github.com/melisgl/mgl-mat"
SRC_URI="https://github.com/melisgl/mgl-mat/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/alexandria
	dev-lisp/bordeaux-threads
	dev-lisp/cffi
	dev-lisp/cl-cuda
	dev-lisp/flexi-streams
	dev-lisp/ieee-floats
	dev-lisp/lla
	dev-lisp/mgl-pax
	dev-lisp/static-vectors
	dev-lisp/trivial-garbage
	test? ( dev-lisp/cl-fad )
"

src_prepare() {
	default
	sed -i 's#/usr/local/cuda/include#/opt/cuda/include#' ${PN}.asd
	if ! use test ; then
		sed -i '/defsystem mgl-mat\/test/,$d' ${PN}.asd
		rm -r test
	fi
}
