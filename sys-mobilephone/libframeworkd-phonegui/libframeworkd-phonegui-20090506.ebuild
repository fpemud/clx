# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="The SHR framework phonegui library."
HOMEPAGE="http://trac.shr-project.org/trac"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""
DOCS="README"

PROJECT_NAME="${PN}"
EGIT_TREE="006e605fb6ba1999c8a8b1b87a57cd28637c99a8"

RDEPEND="sys-mobilephone/libframeworkd-glib
		 dev-libs/dbus-glib"
DEPEND="dev-libs/dbus-glib"

inherit shr
