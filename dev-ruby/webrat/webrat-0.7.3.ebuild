# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Webrat lets you quickly write expressive and robust acceptance tests
for a Ruby web application"
HOMEPAGE="http://github.com/brynary/webrat"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/nokogiri-1.2.0"
ruby_add_rdepend ">=dev-ruby/rack-1.0"
ruby_add_rdepend ">=dev-ruby/rack-test-0.5.3"

