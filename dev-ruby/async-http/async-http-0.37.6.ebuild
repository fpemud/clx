# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby22 ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="https://github.com/socketry/async-http"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/async-1.6"
ruby_add_rdepend ">=dev-ruby/async-io-1.16"
ruby_add_rdepend ">=dev-ruby/http-protocol-0.10"
ruby_add_rdepend ">=dev-ruby/async-rspec-1.10"
ruby_add_rdepend ">=dev-ruby/async-container-0.5.0"
ruby_add_rdepend ">=dev-ruby/bundler-1.3"
ruby_add_rdepend ">=dev-ruby/rspec-3.6"
ruby_add_rdepend ">=dev-ruby/rake-0"

