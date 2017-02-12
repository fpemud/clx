# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22 ruby23"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Artoo adaptor and driver for SDL joysticks and game controllers"
HOMEPAGE="https://github.com/hybridgroup/artoo-joystick"

LICENSE="Apache 2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/artoo-1.6.0"
ruby_add_rdepend ">=dev-ruby/hybridgroup-ruby-sdl-ffi-0"
ruby_add_rdepend ">=dev-ruby/minitest-5.0"
ruby_add_rdepend ">=dev-ruby/minitest-happy-0"
ruby_add_rdepend ">=dev-ruby/mocha-0.14.0"

