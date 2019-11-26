# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Hey folks! NÖN is a super easy framework you can use to make 2D games in Ruby"
HOMEPAGE="http://non2d.github.io"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/thor-0.19.1"
ruby_add_rdepend ">=dev-ruby/bundler-1.8"
ruby_add_rdepend ">=dev-ruby/rake-10.0"

