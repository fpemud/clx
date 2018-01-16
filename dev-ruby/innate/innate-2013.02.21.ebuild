# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Simple, straight-forward base for web-frameworks"
HOMEPAGE="http://github.com/manveru/innate"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rack-1.5.2"
ruby_add_rdepend ">=dev-ruby/bacon-1.2.0"
ruby_add_rdepend ">=dev-ruby/rack-test-0.6.2"

