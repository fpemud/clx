# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Rack-based WebSocket server"
HOMEPAGE="http://github.com/imanel/websocket-rack"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rack-0"
ruby_add_rdepend ">=dev-ruby/em-websocket-0.3.6"
ruby_add_rdepend ">=dev-ruby/eventmachine-1.0.0"
ruby_add_rdepend ">=dev-ruby/thin-0"
ruby_add_rdepend ">=dev-ruby/rspec-2.4.0"
ruby_add_rdepend ">=dev-ruby/mocha-0"

