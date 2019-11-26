# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="An abstract OAuth2 strategy for OmniAuth"
HOMEPAGE="https://github.com/intridea/omniauth-oauth2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/faraday-0.8"
ruby_add_rdepend ">=dev-ruby/multi_json-1.3"
ruby_add_rdepend ">=dev-ruby/oauth2-1.0"
ruby_add_rdepend ">=dev-ruby/omniauth-1.2"
ruby_add_rdepend ">=dev-ruby/bundler-1.0"

all_ruby_prepare() {
	sed -i -e '/git ls-files/d' ${PN}.gemspec || die "sed failed"
}
