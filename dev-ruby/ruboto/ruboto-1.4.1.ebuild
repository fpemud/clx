# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruboto (JRuby on Android) is a platform for developing full stand-alone apps for
Android using the Ruby language and libraries"
HOMEPAGE="http://ruboto.org/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/main-5.2"
ruby_add_rdepend ">=dev-ruby/rake-10.0"
ruby_add_rdepend ">=dev-ruby/rubyzip-1.0"
ruby_add_rdepend ">=dev-ruby/minitest-5.5"

