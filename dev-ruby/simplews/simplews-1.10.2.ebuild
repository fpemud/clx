# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Generates WSDL automatically"
HOMEPAGE="http://github.com/mikisvaz/simplews"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/soap4r-1.5.8"
ruby_add_rdepend ">=dev-ruby/rand-0"
ruby_add_rdepend ">=dev-ruby/builder-0"

