# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/json_pure/json_pure-1.8.1.ebuild,v 1.1 2013/12/27 01:13:22 naota Exp $

EAPI=7

USE_RUBY="ruby25 ruby26"
RUBY_FAKEGEM_RECIPE_TEST="rake"
RUBY_FAKEGEM_RECIPE_DOC="rdoc"

inherit multilib ruby-fakegem

DESCRIPTION="a JSON implementation in pure Ruby"
HOMEPAGE="http://flori.github.com/json"

LICENSE="Ruby-BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

ruby_add_bdepend "test? (
	dev-ruby/sdoc
	dev-ruby/permutation
)"

each_ruby_configure() {
	${RUBY} -Cext/json/ext/generator extconf.rb || die
	${RUBY} -Cext/json/ext/parser extconf.rb || die
}

each_ruby_compile() {
	emake V=1 -Cext/json/ext/generator
	emake V=1 -Cext/json/ext/parser
	cp ext/json/ext/generator/generator$(get_modname) lib/ || die
	cp ext/json/ext/parser/parser$(get_modname) lib/ || die
}

each_ruby_test() {
	env JSON=pure ${RUBY} -S rake test_pure || die
	env JSON=ext  ${RUBY} -S rake test_ext || die
}
