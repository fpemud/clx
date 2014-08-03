# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="DCell is an distributed object framework based on Celluloid built on 0MQ and Zookeeper"
HOMEPAGE="http://github.com/celluloid/dcell"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/celluloid-0.15.0"
ruby_add_rdepend ">=dev-ruby/celluloid-redis-0"
ruby_add_rdepend ">=dev-ruby/celluloid-zmq-0.15.0"
ruby_add_rdepend ">=dev-ruby/redis-namespace-0"
ruby_add_rdepend ">=dev-ruby/reel-0"

