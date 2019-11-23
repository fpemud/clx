# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="GitLab wrapper around git objects"
HOMEPAGE="http://rubygems.org/gems/gitlab_git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/activesupport-4.0"
ruby_add_rdepend ">=dev-ruby/charlock_holmes-0.6"
ruby_add_rdepend ">=dev-ruby/gitlab-grit-2.6"
ruby_add_rdepend ">=dev-ruby/gitlab-linguist-3.0"
ruby_add_rdepend ">=dev-ruby/rugged-0.19.0"

