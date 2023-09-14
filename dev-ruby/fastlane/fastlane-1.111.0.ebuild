# Distributed under the terms of the GNU General Public License v2

EAPI=8
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="The easiest way to automate beta deployments and releases for your iOS and Android apps"
HOMEPAGE="https://fastlane.tools"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/krausefx-shenzhen-0.14.11"
ruby_add_rdepend ">=dev-ruby/slack-notifier-1.3"
ruby_add_rdepend ">=dev-ruby/xcodeproj-0.20"
ruby_add_rdepend ">=dev-ruby/xcpretty-0.2.4"
ruby_add_rdepend ">=dev-ruby/terminal-notifier-1.6.2"
ruby_add_rdepend ">=dev-ruby/terminal-table-1.4.5"
ruby_add_rdepend ">=dev-ruby/plist-3.1.0"
ruby_add_rdepend ">=dev-ruby/addressable-2.3"
ruby_add_rdepend ">=dev-ruby/multipart-post-2.0.0"
ruby_add_rdepend ">=dev-ruby/xcode-install-2.0.0"
ruby_add_rdepend ">=dev-ruby/word_wrap-1.0.0"
ruby_add_rdepend ">=dev-ruby/fastlane_core-0.57.1"
ruby_add_rdepend ">=dev-ruby/bundler-1.12"
ruby_add_rdepend ">=dev-ruby/credentials_manager-0.16.2"
ruby_add_rdepend ">=dev-ruby/spaceship-0.38.1"
ruby_add_rdepend ">=dev-ruby/deliver-1.15.1"
ruby_add_rdepend ">=dev-ruby/snapshot-1.16.4"
ruby_add_rdepend ">=dev-ruby/frameit-3.0.0"
ruby_add_rdepend ">=dev-ruby/pem-1.4.0"
ruby_add_rdepend ">=dev-ruby/cert-1.4.4"
ruby_add_rdepend ">=dev-ruby/sigh-1.11.2"
ruby_add_rdepend ">=dev-ruby/produce-1.3.1"
ruby_add_rdepend ">=dev-ruby/gym-1.12.1"
ruby_add_rdepend ">=dev-ruby/pilot-1.12.1"
ruby_add_rdepend ">=dev-ruby/scan-0.14.2"
ruby_add_rdepend ">=dev-ruby/supply-0.8.0"
ruby_add_rdepend ">=dev-ruby/match-0.11.0"
ruby_add_rdepend ">=dev-ruby/screengrab-0.5.2"
ruby_add_rdepend ">=dev-ruby/activesupport-5"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend ">=dev-ruby/rspec-3.1.0"
ruby_add_rdepend ">=dev-ruby/rspec_junit_formatter-0.2.3"
ruby_add_rdepend ">=dev-ruby/pry-0"
ruby_add_rdepend ">=dev-ruby/pry-byebug-0"
ruby_add_rdepend ">=dev-ruby/yard-0.8.7.4"
ruby_add_rdepend ">=dev-ruby/webmock-1.19.0"
ruby_add_rdepend ">=dev-ruby/coveralls-0.8.13"
ruby_add_rdepend ">=dev-ruby/rubocop-0.44.0"
ruby_add_rdepend ">=dev-ruby/rest-client-1.6.7"
ruby_add_rdepend ">=dev-ruby/fakefs-0.8.1"

