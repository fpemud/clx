# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit common-lisp-3 git-2

DESCRIPTION="A library to generate simple verify code picture"
HOMEPAGE="https://github.com/kevinlynx/kl-verify"
SRC_URI=""

EGIT_REPO_URI="https://github.com/kevinlynx/kl-verify.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-lisp/image"

