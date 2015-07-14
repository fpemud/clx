# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit npm

DESCRIPTION="Fast, unopinionated, minimalist web framework"
HOMEPAGE="https://github.com/strongloop/express"
#SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
dev-nodejs/accepts
dev-nodejs/array-flatten
dev-nodejs/content-disposition
dev-nodejs/content-type
dev-nodejs/cookie
dev-nodejs/cookie-signature
dev-nodejs/debug
dev-nodejs/depd
dev-nodejs/escape-html
dev-nodejs/etag
dev-nodejs/finalhandler
dev-nodejs/fresh
dev-nodejs/merge-descriptors
dev-nodejs/methods
dev-nodejs/on-finished
dev-nodejs/parseurl
dev-nodejs/path-to-regexp
dev-nodejs/proxy-addr
dev-nodejs/range-parser
dev-nodejs/send
dev-nodejs/serve-static
dev-nodejs/type-is
dev-nodejs/vary
dev-nodejs/utils-merge
"
