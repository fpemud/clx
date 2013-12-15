# Distributed under the terms of the GNU General Public License v2

EAPI=4

inherit common-lisp-3 git-2

DESCRIPTION="Ultimate POSIX-Shell Integration for Steel Bank Common Lisp"
HOMEPAGE="https://github.com/thephoeron/uber-shell"
SRC_URI=""

EGIT_REPO_URI="https://github.com/thephoeron/uber-shell.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-lisp/cl-fad"

