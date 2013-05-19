# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit cornucopia_git
EGIT_COMMIT="1f9281ac4320eed66411fde8fe21ea87ee138e78"

IUSE="debug"

RDEPEND=">=dev-libs/glib-2.18.0
	>=dev-libs/libgee-0.5.0
	>=sys-apps/dbus-1.2.1
	>=dev-libs/dbus-glib-0.76
	>=sys-mobilephone/libfso-glib-2010.05.11.2
	>=sys-mobilephone/libfsoframework-0.2.3"
DEPEND="${RDEPEND}
	>=dev-lang/vala-0.8.1.1"

src_configure()
{
	econf \
		$(use_enable debug)
}
