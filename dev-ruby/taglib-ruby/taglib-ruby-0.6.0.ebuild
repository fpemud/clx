# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby interface for the taglib C++ library, for reading and writing
meta-data (tags) of many audio formats"
HOMEPAGE="http://robinst.github.io/taglib-ruby/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/bundler-1.2"
ruby_add_rdepend ">=dev-ruby/rake-compiler-0.8"
ruby_add_rdepend ">=dev-ruby/shoulda-context-1.0"
ruby_add_rdepend ">=dev-ruby/yard-0.7"
ruby_add_rdepend ">=dev-ruby/kramdown-1.0"

