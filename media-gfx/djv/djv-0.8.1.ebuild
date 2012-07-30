# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-video/avidemux/avidemux-2.4.ebuild,v 1.2 2008/01/28 12:02:23 drac Exp $

inherit cmake-utils eutils

MY_P=${PN}-${PV}

DESCRIPTION="Professional movie playback and image processing software for the film and computer animation industries."
HOMEPAGE="http://djv.sf.net"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="1"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="ffmpeg jpeg png quicktime tiff"

RDEPEND=">=x11-libs/fltk-1.1
			>=media-libs/openexr-1.6.1
			>=media-libs/glew-1.4
			ffmpeg? ( >=media-video/ffmpeg-0.4.9 )
			jpeg? ( >=media-libs/jpeg-6b )
			png? ( >=media-libs/libpng-1.2 )
			quicktime? ( >=media-libs/libquicktime-1.0 )
			tiff? ( >=media-libs/tiff-3.8.2 )"

DEPEND="${RDEPEND}
	>=dev-util/cmake-2.4.4"

S=${WORKDIR}/${MY_P}

src_unpack() {
	unpack ${A}
	cd "${S}"
}

src_compile() {
	# Commented out options cause compilation errors, some
	# might need -Wl,--as-needed in LDFLAGS and all USE
	# flags disabled for reproducing. -drac
	# TODO. Needs to be fixed, or reported upstream.

	local mycmakeargs

	# CMakeLists.txt
	#use qt4 || mycmakeargs="${mycmakeargs} -DNO_QT4=1"

	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
	dodoc AUTHORS

	doicon djv_icon.png

	make_desktop_entry djv_view "DJV View" \
		djv_icon "Graphics;"
}
