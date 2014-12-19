# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Parse EPUB 3 book loosely"
HOMEPAGE="https://github.com/KitaitiMakoto/epub-parser"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/pry-0"
ruby_add_rdepend ">=dev-ruby/pry-doc-0"
ruby_add_rdepend ">=dev-ruby/test-unit-0"
ruby_add_rdepend ">=dev-ruby/test-unit-rr-0"
ruby_add_rdepend ">=dev-ruby/test-unit-notify-0"
ruby_add_rdepend ">=dev-ruby/simplecov-0"
ruby_add_rdepend ">=www-servers/thin-0"
ruby_add_rdepend ">=dev-ruby/yard-0"
ruby_add_rdepend ">=dev-ruby/gem-man-0"
ruby_add_rdepend ">=dev-ruby/ronn-0"
ruby_add_rdepend ">=dev-ruby/epzip-0"
ruby_add_rdepend ">=dev-ruby/epubcheck-0"
ruby_add_rdepend ">=dev-ruby/epub_validator-0"
ruby_add_rdepend ">=dev-ruby/aruba-0"
ruby_add_rdepend ">=dev-ruby/enumerabler-0"
ruby_add_rdepend ">=dev-ruby/zipruby-0"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.6"
ruby_add_rdepend ">=dev-ruby/addressable-2.3.5"
ruby_add_rdepend ">=dev-ruby/rchardet-0"

