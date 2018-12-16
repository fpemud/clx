# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="https://github.com/athityakumar/colorls"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/colorize-0"
ruby_add_rdepend ">=dev-ruby/facets-0"
ruby_add_rdepend ">=dev-ruby/ruby-terminfo-0"
ruby_add_rdepend ">=dev-ruby/filesize-0"
ruby_add_rdepend ">=dev-ruby/bundler-1.15"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/rspec-0"
ruby_add_rdepend ">=dev-ruby/rubocop-0"
ruby_add_rdepend ">=dev-ruby/diffy-0"

