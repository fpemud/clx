# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="RSpec results that Hudson can read"
HOMEPAGE="http://github.com/sj26/rspec_junit_formatter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">dev-ruby/rspec-core-2.12.0"
ruby_add_rdepend "dev-ruby/builder"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.6"

