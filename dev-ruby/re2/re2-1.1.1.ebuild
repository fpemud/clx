# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby bindings to re2"
HOMEPAGE="https://github.com/mudge/re2"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

