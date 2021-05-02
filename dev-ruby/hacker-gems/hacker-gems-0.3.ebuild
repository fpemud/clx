# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Hacker-gems installs most needed gems for hackers"
HOMEPAGE="https://github.com/KINGSABRI/hacker-gems"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

ruby_add_rdepend ">=dev-ruby/pry-0"
ruby_add_rdepend ">=dev-ruby/pry-doc-0"
ruby_add_rdepend ">=dev-ruby/pry-byebug-0"
ruby_add_rdepend ">=dev-ruby/colorize-0"
ruby_add_rdepend ">=dev-ruby/virustotal-0"
ruby_add_rdepend ">=dev-ruby/uirusu-0"
ruby_add_rdepend ">=dev-ruby/tty-prompt-0"
ruby_add_rdepend ">=dev-ruby/clipboard-0"
ruby_add_rdepend ">=dev-ruby/commander-0"
ruby_add_rdepend ">=dev-ruby/highline-0"
ruby_add_rdepend ">=dev-ruby/net-ssh-0"
ruby_add_rdepend ">=dev-ruby/net-scp-0"
ruby_add_rdepend ">=dev-ruby/ruby-nmap-0"
ruby_add_rdepend ">=dev-ruby/net-ping-0"
ruby_add_rdepend ">=dev-ruby/ftpd-0"
ruby_add_rdepend ">=dev-ruby/snmp-0"
ruby_add_rdepend ">=dev-ruby/packetfu-0"
ruby_add_rdepend ">=dev-ruby/geoip-0"
ruby_add_rdepend ">=dev-ruby/ronin-scanners-0"
ruby_add_rdepend ">=dev-ruby/rubydns-0"
ruby_add_rdepend ">=dev-ruby/net-http-digest_auth-0"
ruby_add_rdepend ">=dev-ruby/ruby-ntlm-0"
ruby_add_rdepend ">=dev-ruby/rails-0"
ruby_add_rdepend ">=dev-ruby/tiny_tds-0"
ruby_add_rdepend ">=dev-ruby/activerecord-sqlserver-adapter-0"
ruby_add_rdepend ">=dev-ruby/activerecord-oracle_enhanced-adapter-0"
ruby_add_rdepend ">=dev-ruby/wasabi-0"
ruby_add_rdepend ">=dev-ruby/savon-0"
ruby_add_rdepend ">=dev-ruby/httpi-0"
ruby_add_rdepend ">=dev-ruby/httpclient-0"
ruby_add_rdepend ">=dev-ruby/nokogiri-0"
ruby_add_rdepend ">=dev-ruby/twitter-0"
ruby_add_rdepend ">=dev-ruby/selenium-webdriver-0"
ruby_add_rdepend ">=dev-ruby/watir-webdriver-0"
ruby_add_rdepend ">=dev-ruby/coffee-script-0"
ruby_add_rdepend ">=dev-ruby/opal-0"
ruby_add_rdepend ">=dev-ruby/mechanize-0"
ruby_add_rdepend ">=dev-ruby/http-0"
ruby_add_rdepend ">=dev-ruby/rest-client-0"
ruby_add_rdepend ">=dev-ruby/httparty-0"
ruby_add_rdepend ">=dev-ruby/websocket-0"
ruby_add_rdepend ">=dev-ruby/spidr-0"
ruby_add_rdepend ">=dev-ruby/metasm-0"
ruby_add_rdepend ">=dev-ruby/ruby_apk-0"
ruby_add_rdepend ">=dev-ruby/rubyfu-0"

