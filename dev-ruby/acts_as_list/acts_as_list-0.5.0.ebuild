# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/acts_as_list/acts_as_list-0.5.0.ebuild,v 1.1 2014/11/11 06:16:22 graaff Exp $

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"

inherit ruby-fakegem

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_EXTRAINSTALL="init.rb"

RUBY_FAKEGEM_GEMSPEC="${PN}.gemspec"

DESCRIPTION="Capabilities for sorting and reordering a number of objects in a list"
HOMEPAGE="https://github.com/swanandp/acts_as_list"

LICENSE="MIT"
SLOT="3"
KEYWORDS="~amd64 ~x86 ~x86-macos"
IUSE=""

ruby_add_rdepend ">=dev-ruby/activerecord-3"

ruby_add_bdepend "
	test? (
		dev-ruby/test-unit:2
		dev-ruby/activerecord:3.2[sqlite3]
	)"

all_ruby_prepare() {
	rm Gemfile || die
	sed -i -e '/[Bb]undler/d' Rakefile || die
	sed -i -e '1,9 s:^:#:' test/helper.rb || die
	sed -i -e '/git ls/d' ${RUBY_FAKEGEM_GEMSPEC} || die

	# Tests currently only pass on rails 3.
	sed -e '1igem "activerecord", "~>3.2.0"' -i test/helper.rb || die
}
