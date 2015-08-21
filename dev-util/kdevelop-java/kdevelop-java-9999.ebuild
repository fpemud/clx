# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_SCM="git"

inherit kde4-base

DESCRIPTION="KDevelop Plugin for Java Language Support"
HOMEPAGE="https://projects.kde.org/projects/playground/devtools/plugins/kdev-java"
SRC_URI=""

EGIT_REPO_URI="git://anongit.kde.org/kdev-java"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=">=dev-util/kdevelop-4.5
>=dev-util/kdevplatform-1.5.60"
RDEPEND="${DEPEND}"
