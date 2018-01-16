# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="the tiniest blog-engine in Oz"
HOMEPAGE="http://github.com/cloudhead/toto"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/riot-0"
ruby_add_rdepend ">=dev-ruby/builder-0"
ruby_add_rdepend ">=dev-ruby/rack-0"
ruby_add_rdepend ">=dev-ruby/rdiscount-0"

