# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Pure Ruby module for interaction with D-Bus IPC system"
HOMEPAGE="https://github.com/saepia/em-ruby-dbus"

LICENSE="LGPL v2.1"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/packaging_rake_tasks-0"
ruby_add_rdepend ">=dev-ruby/rspec-0"

