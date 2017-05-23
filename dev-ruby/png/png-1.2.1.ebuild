# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="PNG is an almost-pure-ruby PNG library"
HOMEPAGE="http://seattlerb.rubyforge.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/RubyInline-3.9"
ruby_add_rdepend ">=dev-ruby/minitest-5.6"
ruby_add_rdepend ">=dev-ruby/rdoc-4.0"
ruby_add_rdepend ">=dev-ruby/hoe-3.13"

