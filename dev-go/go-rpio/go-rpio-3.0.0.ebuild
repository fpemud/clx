# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=8

inherit golang-build golang-vcs-snapshot

EGO_PN="github.com/stianeikeland/go-rpio"

DESCRIPTION="Raspberry Pi GPIO library for go-lang"
HOMEPAGE="https://github.com/stianeikeland/go-rpio"
SRC_URI="https://github.com/stianeikeland/go-rpio/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
