# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="A Sinatra Extension that makes Page and Fragment Caching easy"
HOMEPAGE="http://github.com/kematzy/sinatra-cache"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/sinatra-1.1.0"
ruby_add_rdepend ">=dev-ruby/sinatra-outputbuffer-0.1.0"
ruby_add_rdepend ">=dev-ruby/sinatra-tests-0.1.6"
ruby_add_rdepend ">=dev-ruby/rspec-1.3.0"

