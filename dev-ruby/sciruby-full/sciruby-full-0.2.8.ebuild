# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby25 ruby26"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="Scientific gems for Ruby (Full installation)"
HOMEPAGE="http://sciruby.com"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend "=dev-ruby/sciruby-0.2.6"
ruby_add_rdepend ">=dev-ruby/ai4r-1.13"
ruby_add_rdepend ">=dev-ruby/algorithms-0.6"
ruby_add_rdepend ">=dev-ruby/awesome_print-1.6"
ruby_add_rdepend ">=dev-ruby/bibsync-0.0"
ruby_add_rdepend ">=dev-ruby/bibtex-ruby-4.0"
ruby_add_rdepend ">=dev-ruby/bio-1.4"
ruby_add_rdepend ">=dev-ruby/classifier-1.3"
ruby_add_rdepend ">=dev-ruby/ctioga2-0.1"
ruby_add_rdepend ">=dev-ruby/daru-0.0"
ruby_add_rdepend ">=dev-ruby/darwinning-0.0"
ruby_add_rdepend ">=dev-ruby/decisiontree-0.5"
ruby_add_rdepend ">=dev-ruby/distribution-0.7"
ruby_add_rdepend ">=dev-ruby/extendmatrix-0.4"
ruby_add_rdepend ">=dev-ruby/gga4r-0.9"
ruby_add_rdepend ">=dev-ruby/gimuby-0.7"
ruby_add_rdepend ">=dev-ruby/gnuplot-2.6"
ruby_add_rdepend ">=dev-ruby/gruff-0.6"
ruby_add_rdepend ">=dev-ruby/histogram-0.2"
ruby_add_rdepend ">=dev-ruby/integration-0.1"
ruby_add_rdepend ">=dev-ruby/iruby-0.2"
ruby_add_rdepend ">=dev-ruby/liblinear-ruby-0.0"
ruby_add_rdepend ">=dev-ruby/measurable-0.0"
ruby_add_rdepend ">=dev-ruby/mikon-0.0"
ruby_add_rdepend ">=dev-ruby/minimization-0.2"
ruby_add_rdepend ">=dev-ruby/nmatrix-0.1"
ruby_add_rdepend ">=dev-ruby/nyaplot-0.1"
ruby_add_rdepend ">=dev-ruby/omoikane-0.0"
ruby_add_rdepend ">=dev-ruby/parallel-1.6"
ruby_add_rdepend ">=dev-ruby/phys-units-0.9"
ruby_add_rdepend ">=dev-ruby/plotrb-0.0"
ruby_add_rdepend ">=dev-ruby/pry-0.10"
ruby_add_rdepend ">=dev-ruby/publisci-0.1"
ruby_add_rdepend ">=dev-ruby/rb-libsvm-1.3"
ruby_add_rdepend ">=dev-ruby/rserve-client-0.3"
ruby_add_rdepend ">=dev-ruby/ruby-fann-1.2"
ruby_add_rdepend ">=dev-ruby/ruby-minisat-2.2"
ruby_add_rdepend ">=dev-ruby/rubyvis-0.5"
ruby_add_rdepend ">=dev-ruby/statsample-2.0"
ruby_add_rdepend ">=dev-ruby/statsample-glm-0.2.0"
ruby_add_rdepend ">=dev-ruby/tioga-1.19"
ruby_add_rdepend ">=dev-ruby/unit-0.5"

