# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="GLFW 3 bindings for Ruby 2"
HOMEPAGE="https://github.com/nilium/ruby-glfw3"

LICENSE="Simplified BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""


