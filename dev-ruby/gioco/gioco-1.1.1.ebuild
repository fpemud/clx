# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Gioco is a easy to implement gamification gem based on plug and play concept"
HOMEPAGE="http://joaomdmoura.github.com/gioco/"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""


