# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Heavy metal SOAP client"
HOMEPAGE="http://savonrb.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/nori-2.4.0"
ruby_add_rdepend ">=dev-ruby/httpi-2.2.3"
ruby_add_rdepend ">=dev-ruby/wasabi-3.3.0"
ruby_add_rdepend ">=dev-ruby/akami-1.2.0"
ruby_add_rdepend ">=dev-ruby/gyoku-1.1.0"
ruby_add_rdepend ">=dev-ruby/uuid-2.3.7"
ruby_add_rdepend ">=dev-ruby/builder-2.1.2"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.4.0"
ruby_add_rdepend ">=dev-ruby/rack-0"
ruby_add_rdepend "dev-ruby/puma"
ruby_add_rdepend ">=dev-ruby/rake-10.1"
ruby_add_rdepend ">=dev-ruby/rspec-2.14"
ruby_add_rdepend ">=dev-ruby/mocha-0.14"
ruby_add_rdepend ">=dev-ruby/json-1.7"

