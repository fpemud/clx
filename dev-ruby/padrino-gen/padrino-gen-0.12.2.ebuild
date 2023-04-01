# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Generators for easily creating and building padrino applications from the console"
HOMEPAGE="http://www.padrinorb.com"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend "=dev-ruby/padrino-core-0.12.2"
ruby_add_rdepend ">=dev-ruby/bundler-1.0"
ruby_add_rdepend "=dev-ruby/padrino-helpers-0.12.2"
ruby_add_rdepend "=dev-ruby/padrino-mailer-0.12.2"

