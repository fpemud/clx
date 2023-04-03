# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby bindings for the libchm via FFI"
HOMEPAGE="http://github.com/nanki/ffi-chm"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/ffi-0"
ruby_add_rdepend ">=dev-ruby/bindata-0"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.5.0"
ruby_add_rdepend ">=dev-ruby/hoe-2.10"

