# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit golang-build golang-vcs-snapshot

EGO_PN="github.com/awalterschulze/gographviz"

DESCRIPTION="Parses the Graphviz DOT language in golang"
HOMEPAGE="https://github.com/awalterschulze/gographviz"
SRC_URI="https://github.com/awalterschulze/gographviz/archive/v1.0.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
