# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Arduino Firmata protocol (http://firmata.org) implementation on Ruby."
HOMEPAGE="http://shokai.github.com/arduino_firmata"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/args_parser-0.1.4"
ruby_add_rdepend ">=dev-ruby/event_emitter-0.2.4"
ruby_add_rdepend ">=dev-ruby/serialport-1.1.0"

