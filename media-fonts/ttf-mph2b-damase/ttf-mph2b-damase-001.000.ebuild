# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit font

DESCRIPTION="Font with extensive Unicode 4.1 range coverage"
HOMEPAGE="http://packages.qa.debian.org/t/ttf-mph-2b-damase.html"
SRC_URI="mirror://debian/pool/main/t/${PN/h2/h-2}/${PN/h2/h-2}_${PV}.dfsg.2.orig.tar.gz"

LICENSE="public-domain"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND=""

FONT_SUFFIX="ttf"
S="${WORKDIR}/${PN/h2/h-2}-${PV}.dfsg.2"
FONT_S="${S}"
