# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Supports EPUB2 and EPUB3 formats"
HOMEPAGE="http://github.com/chdorner/epubinfo"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rubyzip-1.0"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.4.2"
ruby_add_rdepend ">=dev-ruby/rspec-2.14.1"
ruby_add_rdepend ">=dev-ruby/yard-0.8.7"
ruby_add_rdepend ">=dev-ruby/jeweler-2.0.1"
ruby_add_rdepend ">=dev-ruby/redcarpet-0"

