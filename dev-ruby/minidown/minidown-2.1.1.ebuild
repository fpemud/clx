# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Minidown is a lightweight & fast markdown parser, with complete GFM support"
HOMEPAGE="https://github.com/jjyr/minidown"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""


