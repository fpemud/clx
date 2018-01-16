# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="https://github.com/codekitchen/ruby-protocol-buffers"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/autotest-standalone-0"
ruby_add_rdepend ">=dev-ruby/autotest-growl-0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/rake-compiler-0"
ruby_add_rdepend ">=dev-ruby/simplecov-0"
ruby_add_rdepend ">=dev-ruby/rspec-2.5"
ruby_add_rdepend ">=dev-ruby/yard-0"

