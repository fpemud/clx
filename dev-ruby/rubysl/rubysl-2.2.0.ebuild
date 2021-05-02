# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Ruby 2"
HOMEPAGE="http://rubysl.github.com"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/rubysl-abbrev-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-base64-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-benchmark-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-bigdecimal-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-cgi-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-cgi-session-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-cmath-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-complex-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-continuation-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-coverage-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-csv-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-curses-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-date-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-delegate-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-digest-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-drb-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-e2mmap-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-english-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-enumerator-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-erb-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-etc-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-expect-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-fcntl-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-fiber-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-fileutils-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-find-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-forwardable-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-getoptlong-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-gserver-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-io-console-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-io-nonblock-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-io-wait-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-ipaddr-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-irb-2.1"
ruby_add_rdepend ">=dev-ruby/rubysl-logger-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-mathn-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-matrix-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-mkmf-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-monitor-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-mutex_m-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-ftp-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-http-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-imap-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-pop-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-protocol-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-smtp-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-net-telnet-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-nkf-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-observer-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-open-uri-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-open3-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-openssl-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-optparse-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-ostruct-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-pathname-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-prettyprint-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-prime-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-profile-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-profiler-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-pstore-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-pty-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-rational-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-resolv-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-rexml-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-rinda-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-rss-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-scanf-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-securerandom-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-set-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-shellwords-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-singleton-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-socket-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-stringio-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-strscan-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-sync-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-syslog-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-tempfile-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-thread-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-thwait-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-time-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-timeout-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-tmpdir-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-tsort-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-un-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-uri-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-weakref-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-webrick-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-xmlrpc-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-yaml-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-zlib-2.0"
ruby_add_rdepend ">=dev-ruby/rubysl-unicode_normalize-2.0"

