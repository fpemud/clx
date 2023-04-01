# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="This Ruby extension provides graphical output of images for Qt4"
HOMEPAGE="http://wedesoft.github.com/hornetseye-qt4/"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/qtbindings-4.8"
ruby_add_rdepend ">=dev-ruby/malloc-1.1"
ruby_add_rdepend ">=dev-ruby/multiarray-1.0"
ruby_add_rdepend ">=dev-ruby/hornetseye-frame-1.0"

