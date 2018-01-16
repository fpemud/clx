# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby22 ruby23 ruby24"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="
This is the Diamond-Shell project"
HOMEPAGE="https://github.com/shevegen/diamond_shell"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

ruby_add_rdepend ">=dev-ruby/autostart-1.0.4"
ruby_add_rdepend ">=dev-ruby/bioroebe-0.0.22"
ruby_add_rdepend ">=dev-ruby/case_parser-1.0.1"
ruby_add_rdepend ">=dev-ruby/chemistry_paradise-1.0.1"
ruby_add_rdepend ">=dev-ruby/colours-0.0.11"
ruby_add_rdepend ">=dev-ruby/collect_first_word_of_case_menu-0.0.2"
ruby_add_rdepend ">=dev-ruby/configuration-0"
ruby_add_rdepend ">=dev-ruby/convert_pdf_to_text-1.0.1"
ruby_add_rdepend ">=dev-ruby/convert_global_env-1.0.3"
ruby_add_rdepend ">=dev-ruby/cookbooks-0.0.25"
ruby_add_rdepend ">=dev-ruby/cyberweb-0.0.16"
ruby_add_rdepend ">=dev-ruby/determine_archive_type-1.0.0"
ruby_add_rdepend ">=dev-ruby/enable_autologin-1.0.0"
ruby_add_rdepend ">=dev-ruby/environment_information-1.0.22"
ruby_add_rdepend ">=dev-ruby/easycompile-0.6"
ruby_add_rdepend ">=dev-ruby/expand_cd_aliases-1.0.3"
ruby_add_rdepend ">=dev-ruby/exams-0.0.7"
ruby_add_rdepend ">=dev-ruby/find_line_in_file-1.0.0"
ruby_add_rdepend ">=dev-ruby/install_ruby_project-0.0.2"
ruby_add_rdepend ">=dev-ruby/multimedia_paradise-0"
ruby_add_rdepend ">=dev-ruby/proper_english-1.0.0"
ruby_add_rdepend ">=dev-ruby/rbt-0.0.17"
ruby_add_rdepend ">=dev-ruby/save_file-1.0.10"
ruby_add_rdepend ">=dev-ruby/show_directory_content-1.0.9"
ruby_add_rdepend ">=dev-ruby/stat_file-1.0.2"
ruby_add_rdepend ">=dev-ruby/create_file_skeleton-0"
ruby_add_rdepend ">=dev-ruby/streamripper-1.0.1"
ruby_add_rdepend ">=dev-ruby/string_colour_parser-1.0.0"
ruby_add_rdepend ">=dev-ruby/traverse_install-1.0.1"
ruby_add_rdepend ">=dev-ruby/url_action-0.0.4"
ruby_add_rdepend ">=dev-ruby/verbose_truth-0"
ruby_add_rdepend ">=dev-ruby/remove_file_suffix-0"
ruby_add_rdepend ">=dev-ruby/advanced_clipboard-0"
ruby_add_rdepend ">=dev-ruby/wget_wrapper-0"
ruby_add_rdepend ">=dev-ruby/remove_comments-0"
ruby_add_rdepend ">=dev-ruby/system_checker-0"
ruby_add_rdepend ">=dev-ruby/inputrc-0"
ruby_add_rdepend ">=dev-ruby/generate_rc_file-0"
ruby_add_rdepend ">=dev-ruby/create_zip-0"
ruby_add_rdepend ">=dev-ruby/size_of-0"
ruby_add_rdepend ">=dev-ruby/serve_local_page-0"
ruby_add_rdepend ">=dev-ruby/show_rdoc_docu-0"
ruby_add_rdepend ">=dev-ruby/create_iso-0"
ruby_add_rdepend ">=dev-ruby/pipe_handler-0"

