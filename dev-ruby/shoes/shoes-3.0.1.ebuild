# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Shoes is the best little GUI toolkit for Ruby. This gem is currently a placeholder until we properly gemfiy Shoes."
HOMEPAGE="https://github.com/shoes/shoes4"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""


