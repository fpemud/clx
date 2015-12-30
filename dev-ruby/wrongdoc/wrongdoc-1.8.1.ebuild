# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="wrongdoc mangles an existing RDoc directory and makes any changes we
feel like"
HOMEPAGE="http://bogomips.org/wrongdoc/"

LICENSE="GPLv3+"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/nokogiri-1.5"
ruby_add_rdepend ">=dev-ruby/tidy_ffi-0.1"
ruby_add_rdepend ">=dev-ruby/rdoc-3.9"

