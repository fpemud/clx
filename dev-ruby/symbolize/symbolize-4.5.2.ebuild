# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="ActiveRecord/Mongoid enums with i18n"
HOMEPAGE="http://github.com/nofxx/symbolize"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/i18n-0"
ruby_add_rdepend ">=dev-ruby/activemodel-3.2"
ruby_add_rdepend ">=dev-ruby/activesupport-3.2"
ruby_add_rdepend ">=dev-ruby/pry-0"
ruby_add_rdepend ">=dev-ruby/mongoid-0"
ruby_add_rdepend ">=dev-ruby/activerecord-0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/rspec-3"
ruby_add_rdepend ">=dev-ruby/rubocop-0"
ruby_add_rdepend ">=dev-ruby/guard-0"
ruby_add_rdepend ">=dev-ruby/guard-rspec-0"
ruby_add_rdepend ">=dev-ruby/guard-rubocop-0"

