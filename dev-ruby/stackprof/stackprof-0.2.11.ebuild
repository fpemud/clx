# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="stackprof is a fast sampling profiler for ruby code, with cpu, wallclock and object allocation samplers"
HOMEPAGE="http://github.com/tmm1/stackprof"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

