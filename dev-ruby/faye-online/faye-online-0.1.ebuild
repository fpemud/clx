# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Faye Online user list and time count"
HOMEPAGE="https://github.com/eoecn/faye-online"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/json-0"
ruby_add_rdepend ">=dev-ruby/rails-0"
ruby_add_rdepend ">=dev-ruby/activesupport-0"
ruby_add_rdepend ">=dev-ruby/activerecord_idnamecache-0"
ruby_add_rdepend ">=dev-ruby/thin-0"
ruby_add_rdepend ">=dev-ruby/rainbows-0"
ruby_add_rdepend ">=dev-ruby/redis-0"
ruby_add_rdepend ">=dev-ruby/faye-0"
ruby_add_rdepend ">=dev-ruby/faye-redis-0"
ruby_add_rdepend ">=dev-ruby/cross_time_calculation-0"
ruby_add_rdepend ">=dev-ruby/sqlite3-0"
ruby_add_rdepend ">=dev-ruby/combustion-0"
ruby_add_rdepend ">=dev-ruby/pry-debugger-0"
ruby_add_rdepend ">=dev-ruby/fakeredis-0"

