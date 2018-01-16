# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="https://github.com/dry-rb/dry-transaction"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/dry-container-0.2.8"
ruby_add_rdepend ">=dev-ruby/dry-matcher-0.5.0"
ruby_add_rdepend ">=dev-ruby/dry-monads-0.0.1"
ruby_add_rdepend ">=dev-ruby/wisper-1.6.0"
ruby_add_rdepend ">=dev-ruby/bundler-1.12.2"
ruby_add_rdepend ">=dev-ruby/rake-10.4.2"
ruby_add_rdepend ">=dev-ruby/rspec-3.3.0"
ruby_add_rdepend ">=dev-ruby/simplecov-0.10.0"
ruby_add_rdepend ">=dev-ruby/yard-0"

