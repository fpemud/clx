# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="An implementation of Brainfuck on the Rubinius VM"
HOMEPAGE="http://github.com/txus/brainfuck"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/parslet-0"
ruby_add_rdepend ">=dev-ruby/minitest-0"
ruby_add_rdepend ">=dev-ruby/mocha-0"

