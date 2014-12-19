# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby RTF is a library that can be used to create rich text format (RTF) documents"
HOMEPAGE="http://github.com/thechrisoshow/rtf"

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""


