# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="A framework for building GUI/TUI terminal/console applications"
HOMEPAGE="https://github.com/gavinlaking/vedeu"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend "=dev-ruby/guard-2.14.0"
ruby_add_rdepend "=dev-ruby/guard-minitest-2.4.4"
ruby_add_rdepend "=dev-ruby/guard-rubocop-1.2.0"
ruby_add_rdepend "=dev-ruby/minitest-5.9.0"
ruby_add_rdepend "=dev-ruby/minitest-reporters-1.1.9"
ruby_add_rdepend "=dev-ruby/mocha-1.1.0"
ruby_add_rdepend "=dev-ruby/rubocop-0.40.0"
ruby_add_rdepend "=dev-ruby/simplecov-0.11.2"
ruby_add_rdepend "=dev-ruby/simplecov-console-0.3.0"
ruby_add_rdepend "=dev-ruby/yard-0.8.7.6"
ruby_add_rdepend ">=dev-ruby/bundler-1.12"
ruby_add_rdepend ">=dev-ruby/rake-10.5"
ruby_add_rdepend "=dev-ruby/thor-0.19.1"
ruby_add_rdepend "=dev-ruby/vedeu_cli-0.0.10"

