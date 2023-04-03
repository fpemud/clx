# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby FFI library"
HOMEPAGE="http://wiki.github.com/ffi/ffi"

LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/ffi-1.0.0"
ruby_add_rdepend ">=dev-ruby/rspec-0"
ruby_add_rdepend ">=dev-ruby/rubygems-tasks-0"

