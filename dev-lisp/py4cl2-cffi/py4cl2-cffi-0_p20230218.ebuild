# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3 vcs-snapshot

EGIT_COMMIT="c5103ac204be7f3ce331aa82d95e374a47315a21"

DESCRIPTION="CFFI based alternative to PY4CL2"
HOMEPAGE="https://github.com/digikar99/py4cl2-cffi"
SRC_URI="https://github.com/digikar99/py4cl2-cffi/archive/${EGIT_COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/bordeaux-threads
	dev-lisp/cffi
	dev-lisp/alexandria
	dev-lisp/trivial-garbage
	dev-lisp/iterate
	dev-lisp/float-features
	dev-lisp/parse-number
	dev-lisp/split-sequence
"
BDEPEND=""
