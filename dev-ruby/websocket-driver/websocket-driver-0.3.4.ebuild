# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=""

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="http://github.com/faye/websocket-driver-ruby"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/eventmachine-0"
ruby_add_rdepend ">=dev-ruby/rake-compiler-0.8.0"
ruby_add_rdepend ">=dev-ruby/rspec-0"

