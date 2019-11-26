# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby integrations for Elasticsearch (client, API, etc"
HOMEPAGE="http://github.com/elasticsearch/elasticsearch-ruby"

LICENSE="Apache 2"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend "=dev-ruby/elasticsearch-transport-6.0.2"
ruby_add_rdepend "=dev-ruby/elasticsearch-api-6.0.2"
