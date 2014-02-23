# Copyright 1999-2013 Gentoo Foundation

EAPI=4
USE_RUBY="ruby18 ruby19 ruby20 ruby21 ree18 jruby"

RUBY_FAKEGEM_TASK_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="CHANGELOG.rdoc README.rdoc"

RUBY_FAKEGEM_TASK_TEST=""

inherit ruby-fakegem

DESCRIPTION="Raindrops is a real-time stats toolkit to show statistics for Rack HTTP servers"
HOMEPAGE="http://raindrops.bogomips.org"

LICENSE="LGPL"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE="test"
SLOT="0"

RDEPEND="${RDEPEND}"

#all_ruby_prepare() {
#	# Existing metadata causes a crash in jruby, so use our own.
#	rm ../metadata || die "Unable to remove metadata."
#}
#
#each_ruby_test() {
#	${RUBY} -Ctest test_gnuplot.rb || die
#}
