# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/turbolinks/turbolinks-2.2.2.ebuild,v 1.1 2014/05/04 07:21:01 graaff Exp $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21 ruby22"

# The gem does not contain runnable tests.
RUBY_FAKEGEM_TASK_TEST=""

RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_RECIPE_DOC="rdoc"

inherit ruby-fakegem

DESCRIPTION="Ruby wrapper for the RubyGems.org API"
HOMEPAGE="https://github.com/rubygems/gems"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

#ruby_add_rdepend ">=dev-ruby/actionpack-4.0.0"
