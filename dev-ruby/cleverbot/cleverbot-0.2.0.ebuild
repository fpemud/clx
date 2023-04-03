# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby wrapper for Cleverbot"
HOMEPAGE="https://github.com/benmanns/cleverbot"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/httparty-0.8.1"
ruby_add_rdepend ">=dev-ruby/bundler-0"
ruby_add_rdepend ">=dev-ruby/jeweler-1.8.7"
ruby_add_rdepend ">=dev-ruby/git-1.0.1"
ruby_add_rdepend ">=dev-ruby/simplecov-0.7.1"
ruby_add_rdepend ">=dev-ruby/rdoc-4.0.1"
ruby_add_rdepend ">=dev-ruby/rspec-2.14.1"

