# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Performance testing matchers for RSpec that provide simple way to specify speed benchmark expectations"
HOMEPAGE=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/benchmark-perf-0.1.0"
ruby_add_rdepend ">=dev-ruby/rspec-3.0.0"
ruby_add_rdepend ">=dev-ruby/bundler-1.5.0"
ruby_add_rdepend ">=dev-ruby/rake-0"

