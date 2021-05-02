# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Encapsulates a "Sprite" in RMagick"
HOMEPAGE="http://github.com/c00lryguy/rmagick-sprite"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rmagick-2.13.1"
ruby_add_rdepend ">=dev-ruby/version-1.0"
ruby_add_rdepend ">=dev-ruby/dsl-0.2.2"

