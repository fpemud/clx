# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Namespaced Rack::Session, Rack::Cache, I18n and cache Redis stores for Ruby web frameworks"
HOMEPAGE="http://redis-store.org/redis-store"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/redis-2.2"
ruby_add_rdepend ">=dev-ruby/rake-10"
ruby_add_rdepend ">=dev-ruby/bundler-1.3"
ruby_add_rdepend ">=dev-ruby/mocha-0.14.0"
ruby_add_rdepend ">=dev-ruby/minitest-5"
ruby_add_rdepend ">=dev-ruby/git-1.2"

all_ruby_prepare() {
	sed -i -e '/git ls-files/d' ${PN}.gemspec || die "sed failed"
}
