# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Recognize text and characters from image files using web services"
HOMEPAGE="https://github.com/mabarroso/ocr"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/savon-0.9.9"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.5.0"
ruby_add_rdepend ">=dev-ruby/rspec-2.7.0"

