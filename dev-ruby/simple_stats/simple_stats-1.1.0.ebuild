# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Simple mean, median, modes, sum, and frequencies for Ruby arrays and enumerables"
HOMEPAGE="https://github.com/brianhempel/simple_stats"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""


