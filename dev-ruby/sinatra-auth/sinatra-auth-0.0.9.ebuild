# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="http://github.com/quackingduck/sinatra-auth"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/sinatra-0.9.4"
ruby_add_rdepend ">=dev-ruby/exemplor-2010.0.0"
ruby_add_rdepend "=dev-ruby/rack-test-0.4.0"
ruby_add_rdepend "=dev-ruby/pow-0.2.2"

