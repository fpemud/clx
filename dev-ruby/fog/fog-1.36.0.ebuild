# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby20 ruby21 ruby22"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="The Ruby cloud services library"
HOMEPAGE="http://github.com/fog/fog"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/fog-core-1.32"
ruby_add_rdepend ">=dev-ruby/fog-json-0"
ruby_add_rdepend ">=dev-ruby/fog-xml-0.1.1"
ruby_add_rdepend ">=dev-ruby/ipaddress-0.5"
ruby_add_rdepend ">=dev-ruby/nokogiri-1.5"
ruby_add_rdepend ">=dev-ruby/fog-atmos-0"
ruby_add_rdepend ">=dev-ruby/fog-aws-0.6.0"
ruby_add_rdepend ">=dev-ruby/fog-brightbox-0.4"
ruby_add_rdepend ">=dev-ruby/fog-dynect-0.0.2"
ruby_add_rdepend ">=dev-ruby/fog-ecloud-0.1"
ruby_add_rdepend "<=dev-ruby/fog-google-0.1.0"
ruby_add_rdepend ">=dev-ruby/fog-local-0"
ruby_add_rdepend ">=dev-ruby/fog-powerdns-0.1.1"
ruby_add_rdepend ">=dev-ruby/fog-profitbricks-0"
ruby_add_rdepend ">=dev-ruby/fog-radosgw-0.0.2"
ruby_add_rdepend ">=dev-ruby/fog-riakcs-0"
ruby_add_rdepend ">=dev-ruby/fog-sakuracloud-0.0.4"
ruby_add_rdepend ">=dev-ruby/fog-serverlove-0"
ruby_add_rdepend ">=dev-ruby/fog-softlayer-0"
ruby_add_rdepend ">=dev-ruby/fog-storm_on_demand-0"
ruby_add_rdepend ">=dev-ruby/fog-terremark-0"
ruby_add_rdepend ">=dev-ruby/fog-vmfusion-0"
ruby_add_rdepend ">=dev-ruby/fog-voxel-0"
ruby_add_rdepend ">=dev-ruby/fog-xenserver-0"
ruby_add_rdepend ">=dev-ruby/fog-aliyun-0.1.0"
ruby_add_rdepend ">=dev-ruby/docker-api-1.13.6"
ruby_add_rdepend ">=dev-ruby/fission-0"
ruby_add_rdepend ">=dev-ruby/minitest-0"
ruby_add_rdepend ">=dev-ruby/minitest-stub-const-0"
ruby_add_rdepend ">=dev-ruby/opennebula-0"
ruby_add_rdepend ">=dev-ruby/pry-0"
ruby_add_rdepend ">=dev-ruby/rake-0"
ruby_add_rdepend "=dev-ruby/rbovirt-0.0.32"
ruby_add_rdepend ">=dev-ruby/rbvmomi-0"
ruby_add_rdepend ">=dev-ruby/rubocop-0"
ruby_add_rdepend ">=dev-ruby/shindo-0.3.4"
ruby_add_rdepend ">=dev-ruby/simplecov-0"
ruby_add_rdepend ">=dev-ruby/thor-0"
ruby_add_rdepend ">=dev-ruby/yard-0"
ruby_add_rdepend ">=dev-ruby/rspec-core-0"
ruby_add_rdepend ">=dev-ruby/rspec-expectations-0"
ruby_add_rdepend ">=dev-ruby/vcr-0"
ruby_add_rdepend ">=dev-ruby/webmock-1.22.2"

