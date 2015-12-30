# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Capistrano Deployment Email Notification"
HOMEPAGE="http://github.com/pboling/capistrano_mailer"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/capistrano-log_with_awesome-0"
ruby_add_rdepend ">=dev-ruby/inline-style-0"
ruby_add_rdepend ">=dev-ruby/actionmailer-0"

