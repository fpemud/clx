# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="irbtools-more adds bond and looksee to IRB (Gems that use core extensions)"
HOMEPAGE="https://github.com/janlelis/irbtools-more"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/irbtools-1.7"
ruby_add_rdepend ">=dev-ruby/bond-0.5"
ruby_add_rdepend ">=dev-ruby/looksee-2.1"
ruby_add_rdepend ">=dev-ruby/binding_of_caller-0.7"
ruby_add_rdepend ">=dev-ruby/did_you_mean-0.9"

