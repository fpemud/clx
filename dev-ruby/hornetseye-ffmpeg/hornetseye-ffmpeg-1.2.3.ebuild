# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="This Ruby extension defines the class Hornetseye::AVInput for reading frames from video files and the class Hornetseye::AVOutput for writing frames to video files"
HOMEPAGE="http://wedesoft.github.com/hornetseye-ffmpeg/"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/malloc-1.2"
ruby_add_rdepend ">=dev-ruby/multiarray-1.0"
ruby_add_rdepend ">=dev-ruby/hornetseye-frame-1.0"

