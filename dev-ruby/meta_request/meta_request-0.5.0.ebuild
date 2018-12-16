# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Supporting gem for Rails Panel (Google Chrome extension for Rails development)"
HOMEPAGE="https://github.com/dejan/rails_panel/tree/master/meta_request"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/railties-3.0.0"
ruby_add_rdepend ">=dev-ruby/rack-contrib-1.1"
ruby_add_rdepend ">=dev-ruby/callsite-0.0"

