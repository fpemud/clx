# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Phobos is a microframework and library for kafka based applications, it wraps common behaviors needed by consumers/producers in an easy an convenient API"
HOMEPAGE="https://github.com/klarna/phobos"

LICENSE="Apache License Version 2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/bundler-1.12"
ruby_add_rdepend ">=dev-ruby/rake-10.0"
ruby_add_rdepend ">=dev-ruby/rspec-3.0"
ruby_add_rdepend ">=dev-ruby/pry-byebug-3.4.0"
ruby_add_rdepend "=dev-ruby/rspec_junit_formatter-0.2.2"
ruby_add_rdepend ">=dev-ruby/simplecov-0.12.0"
ruby_add_rdepend ">=dev-ruby/coveralls-0.8.15"
ruby_add_rdepend ">=dev-ruby/timecop-0"
ruby_add_rdepend ">=dev-ruby/ruby-kafka-0.3.14"
ruby_add_rdepend ">=dev-ruby/concurrent-ruby-1.0.2"
ruby_add_rdepend ">=dev-ruby/concurrent-ruby-ext-1.0.2"
ruby_add_rdepend ">=dev-ruby/activesupport-4.0.0"
ruby_add_rdepend ">=dev-ruby/logging-0"
ruby_add_rdepend ">=dev-ruby/exponential-backoff-0"
ruby_add_rdepend ">=dev-ruby/thor-0"

