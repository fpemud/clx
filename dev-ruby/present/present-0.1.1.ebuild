# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Presentation tool for terminal"
HOMEPAGE="http://cocktail-party.rubyforge.org"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/ncurses-0"
ruby_add_rdepend ">=dev-ruby/Text-0"
ruby_add_rdepend ">=dev-ruby/escape-0"
ruby_add_rdepend ">=dev-ruby/redgreen-0"

