# Distributed under the terms of the GNU General Public License v2

EAPI=4

#VIM_PLUGIN_VIM_VERSION="7.0"
inherit git-2 vim-plugin

DESCRIPTION="vim plugin: The ultimate vim statusline utility."
HOMEPAGE="http://www.vim.org/scripts/script.php?script_id=3881"
SRC_URI=""
EGIT_REPO_URI="git://github.com/Lokaltog/vim-powerline.git"
EGIT_BRANCH=develop
LICENSE="CCPL-Attribution-ShareAlike-3.0"
KEYWORDS="~amd64 ~x86"
IUSE=""

VIM_PLUGIN_HELPFILES="Powerline"

src_unpack() {
	git-2_src_unpack
	cd "${S}"
	rm -r .git
	rm .gitignore
}

#src_install() {
#	vim-plugin_src_install
#}
