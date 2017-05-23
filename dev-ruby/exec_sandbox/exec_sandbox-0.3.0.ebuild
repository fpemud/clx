# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Temporary users and groups, rlimits"
HOMEPAGE="http://github.com/pwnall/exec_sandbox"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/ffi-1.9.6"
ruby_add_rdepend ">=dev-ruby/rdoc-3.10"
ruby_add_rdepend ">=dev-ruby/rspec-3.1.0"
ruby_add_rdepend ">=dev-ruby/yard-0.8.7.6"
ruby_add_rdepend ">=dev-ruby/yard-rspec-0.1"
ruby_add_rdepend ">=dev-ruby/bundler-1.3.5"
ruby_add_rdepend ">=dev-ruby/jeweler-2.0.1"
ruby_add_rdepend ">=dev-ruby/simplecov-0"

