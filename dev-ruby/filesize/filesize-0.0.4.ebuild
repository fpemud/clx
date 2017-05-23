# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="filesize is a small class for handling filesizes with both the SI and binary prefixes, allowing conversion from any size to any other size"
HOMEPAGE="http://filesize.rubyforge.org/"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rspec-3.0"

