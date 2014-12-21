# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Enables easy Google map + overlays creation"
HOMEPAGE="http://github.com/apneadiving/Google-Maps-for-Rails"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend "=dev-ruby/rspec-2.14.0"
ruby_add_rdepend "=dev-ruby/rake-10.1.0"
ruby_add_rdepend ">=dev-ruby/coffee-script-0"
ruby_add_rdepend ">=dev-ruby/sprockets-0"
ruby_add_rdepend ">=dev-ruby/pry-0"

