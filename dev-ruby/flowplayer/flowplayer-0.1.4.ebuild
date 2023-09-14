# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Flowplayer helper for Rails 3"
HOMEPAGE="https://github.com/jetviper21/flowplayer-gem"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/bundler-1.0.0"
ruby_add_rdepend ">=dev-ruby/rspec-2.4.0"
ruby_add_rdepend ">=dev-ruby/nokogiri-0"
ruby_add_rdepend ">=dev-ruby/mocha-0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/json-0"

