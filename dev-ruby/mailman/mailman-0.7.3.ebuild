# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Mailman makes it easy to process incoming emails with a simple routing DSL"
HOMEPAGE="https://github.com/mailman/mailman"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/mail-2.0.3"
ruby_add_rdepend ">=dev-ruby/activesupport-2.3.4"
ruby_add_rdepend ">=dev-ruby/listen-2.2"
ruby_add_rdepend ">=dev-ruby/maildir-0.5.0"
ruby_add_rdepend ">=dev-ruby/i18n-0.4.1"
ruby_add_rdepend ">=dev-ruby/rspec-3.0"

