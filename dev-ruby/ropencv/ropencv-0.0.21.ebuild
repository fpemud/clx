# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby21 ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="ROpenCV is a ffi ruby binding for the Open Source Computer Vision Library OpenCV 2"
HOMEPAGE="http://www.ropencv.aduda.eu"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rbind-0.0.27"
ruby_add_rdepend ">=dev-ruby/ffi-1.9.0"
ruby_add_rdepend ">=dev-ruby/minitest-5.5"

