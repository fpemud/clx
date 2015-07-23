# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="em-ruby-sockets uses Ruby sockets within EventMachine::watch()"
HOMEPAGE="https://github.com/ibc/em-ruby-sockets"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/kgio-2.7.4"
ruby_add_rdepend ">=dev-ruby/iobuffer-1.1.2"

