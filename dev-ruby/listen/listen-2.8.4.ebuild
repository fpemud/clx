# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="The Listen gem listens to file modifications and notifies you about the changes"
HOMEPAGE="https://github.com/guard/listen"

LICENSE="MIT"
SLOT="2"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/celluloid-0.15.2"
ruby_add_rdepend ">=dev-ruby/rb-fsevent-0.9.3"
ruby_add_rdepend ">=dev-ruby/rb-inotify-0.9"
ruby_add_rdepend ">=dev-ruby/bundler-1.3.5"
ruby_add_rdepend ">=dev-ruby/celluloid-io-0.15.0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/rspec-3.0.0"
ruby_add_rdepend ">=dev-ruby/rspec-retry-0"

