# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Capistrano plugin that integrates Resque server tasks"
HOMEPAGE="https://github.com/sshingler/capistrano-resque"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/capistrano-0"
ruby_add_rdepend ">=dev-ruby/resque-0"
ruby_add_rdepend ">=dev-ruby/resque-scheduler-0"

