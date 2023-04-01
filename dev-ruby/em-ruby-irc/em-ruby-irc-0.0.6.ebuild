# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="EM IRC Bot Framework"
HOMEPAGE="http://github.com/tecnobrat/em-ruby-irc"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/eventmachine-0.12.8"
ruby_add_rdepend "=dev-ruby/rspec-1.3.0"

