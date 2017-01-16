# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby on Container / helper tools with DSL for your handmade linux containers"
HOMEPAGE="https://github.com/udzura/haconiwa"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/ffi-0"
ruby_add_rdepend ">=dev-ruby/bundler-1.11"
ruby_add_rdepend ">=dev-ruby/rake-10.0"
ruby_add_rdepend ">=dev-ruby/test-unit-3"
ruby_add_rdepend ">=dev-ruby/test-unit-rr-0"
ruby_add_rdepend ">=dev-ruby/power_assert-0"
ruby_add_rdepend ">=dev-ruby/pry-0"

