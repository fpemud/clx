# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="RubyPants is a Ruby port of the smart-quotes library SmartyPants"
HOMEPAGE="http://www.kronavita.de/chris/blog/projects/rubypants.html"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""


