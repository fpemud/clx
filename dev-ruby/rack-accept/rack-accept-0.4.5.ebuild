# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="HTTP Accept, Accept-Charset, Accept-Encoding, and Accept-Language for Ruby/Rack"
HOMEPAGE="http://mjijackson.github.com/rack-accept"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rack-0.4"
ruby_add_rdepend ">=dev-ruby/rake-0"

