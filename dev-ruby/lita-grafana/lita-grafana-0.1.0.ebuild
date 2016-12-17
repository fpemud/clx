# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Lita Bot Handler for Grafana"
HOMEPAGE="https://github.com/sophicware/lita-grafana"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/lita-4.6"
ruby_add_rdepend ">=dev-ruby/bundler-1.3"
ruby_add_rdepend ">=dev-ruby/pry-byebug-0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/rack-test-0"
ruby_add_rdepend ">=dev-ruby/rspec-3.0.0"
ruby_add_rdepend ">=dev-ruby/fakeredis-0"

