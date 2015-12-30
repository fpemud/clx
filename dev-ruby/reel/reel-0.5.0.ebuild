# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="A Celluloid::IO-powered HTTP server"
HOMEPAGE="https://github.com/celluloid/reel"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/celluloid-0.15.1"
ruby_add_rdepend ">=dev-ruby/celluloid-io-0.15.0"
ruby_add_rdepend ">=dev-ruby/http-0.6.0"
ruby_add_rdepend ">=dev-ruby/http_parser_rb-0.6.0"
ruby_add_rdepend ">=dev-ruby/websocket_parser-0.1.6"

