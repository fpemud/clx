# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="An opinionated ruby library wrapping ffi-rzmq for more rubish flair"
HOMEPAGE="https://github.com/jgraichen/rbzmq"

LICENSE="LGPLv3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/ffi-rzmq-2.0"
ruby_add_rdepend ">=dev-ruby/bundler-1.5"

