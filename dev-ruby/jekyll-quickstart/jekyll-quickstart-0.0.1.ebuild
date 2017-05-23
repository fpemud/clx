# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION=""
HOMEPAGE="https://github.com/sunteya/jekyll-quickstart"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/jekyll-0"
ruby_add_rdepend ">=dev-ruby/jekyll-assets-0"
ruby_add_rdepend ">=dev-ruby/compass-0"
ruby_add_rdepend ">=dev-ruby/bundler-1.6"
ruby_add_rdepend ">=dev-ruby/rspec-3.0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/pry-byebug-0"
ruby_add_rdepend ">=dev-ruby/rails-assets-jquery-0"
ruby_add_rdepend ">=dev-ruby/activesupport-0"
ruby_add_rdepend ">=dev-ruby/cocaine-0"

