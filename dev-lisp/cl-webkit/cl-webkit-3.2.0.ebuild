# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit common-lisp-3

DESCRIPTION="A FFI binding to WebKit2Gtk+"
HOMEPAGE="https://github.com/joachifm/cl-webkit"
SRC_URI="https://github.com/joachifm/cl-webkit/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	dev-lisp/cl-cffi-gtk
	net-libs/webkit-gtk
"

src_prepare() {
	default
	sed -i '/defsystem :cl-webkit2\/test/,$d' webkit2/cl-webkit2.asd
	rm -rf tests
}

