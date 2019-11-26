# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="A Ruby replacement for bash+ssh, providing both an interactive shell and a library"
HOMEPAGE="http://rush.heroku.com/"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rake-0.9.0"
ruby_add_rdepend ">=dev-ruby/jeweler-1.8.3"
ruby_add_rdepend ">=dev-ruby/rspec-1.2.0"
ruby_add_rdepend ">=dev-ruby/session-0"

