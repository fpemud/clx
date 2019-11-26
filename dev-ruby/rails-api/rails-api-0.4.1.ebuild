# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Rails::API is a subset of a normal Rails application,
                         created for applications that don't require all
                         functionality that a complete Rails application provides"
HOMEPAGE="https://github.com/rails-api/rails-api"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/actionpack-3.2.11"
ruby_add_rdepend ">=dev-ruby/railties-3.2.11"
ruby_add_rdepend ">=dev-ruby/rails-3.2.11"

