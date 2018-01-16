# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="A Mersenne-Twister random number generator (RNG) packed up as a class"
HOMEPAGE="http://www.rubyforge.org/projects/random"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""


