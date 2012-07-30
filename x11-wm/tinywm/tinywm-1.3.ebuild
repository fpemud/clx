# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils

DESCRIPTION="TinyWM is a ridiculously tiny window manager implemender nearly as few lines of C as possible"
HOMEPAGE="http://incise.org/tinywm.html"
SRC_URI="http://incise.org/files/dev/tinywm-${PV}.tgz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	dobin tinywm
}

