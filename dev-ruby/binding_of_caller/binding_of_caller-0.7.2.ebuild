# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Retrieve the binding of a method's caller"
HOMEPAGE="http://github.com/banister/binding_of_caller"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/debug_inspector-0.0.1"
ruby_add_rdepend ">=dev-ruby/bacon-0"
ruby_add_rdepend ">=dev-ruby/rake-0"

