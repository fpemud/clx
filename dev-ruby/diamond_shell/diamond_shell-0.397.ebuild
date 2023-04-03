# Distributed under the terms of the GNU General Public License v2

EAPI=7
USE_RUBY="ruby31 ruby32"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_EXTRADOC="README.md"
RUBY_FAKEGEM_GEMSPEC=${PN}.gemspec

inherit ruby-fakegem

DESCRIPTION="
This is the Diamond-Shell project"
HOMEPAGE="https://github.com/shevegen/diamond_shell"

LICENSE="GPL-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm"
IUSE=""

ruby_add_rdepend ">=dev-ruby/add_inline_css-0"
ruby_add_rdepend ">=dev-ruby/advanced_clipboard-0"
ruby_add_rdepend ">=dev-ruby/ascii_paradise-0"
ruby_add_rdepend ">=dev-ruby/autostart-0"
ruby_add_rdepend ">=dev-ruby/backup_paradise-0"
ruby_add_rdepend ">=dev-ruby/bioroebe-0"
ruby_add_rdepend ">=dev-ruby/case_parser-0"
ruby_add_rdepend ">=dev-ruby/chemistry_paradise-0"
ruby_add_rdepend ">=dev-ruby/clock_counter-0"
ruby_add_rdepend ">=dev-ruby/collect_first_word_of_case_menu-0"
ruby_add_rdepend ">=dev-ruby/colours-0"
ruby_add_rdepend ">=dev-ruby/configuration-0"
ruby_add_rdepend ">=dev-ruby/convert_global_env-0"
ruby_add_rdepend ">=dev-ruby/convert_pdf_to_text-0"
ruby_add_rdepend ">=dev-ruby/cookbooks-0"
ruby_add_rdepend ">=dev-ruby/create_file_skeleton-0"
ruby_add_rdepend ">=dev-ruby/create_iso-0"
ruby_add_rdepend ">=dev-ruby/create_zip-0"
ruby_add_rdepend ">=dev-ruby/cut_audio-0"
ruby_add_rdepend ">=dev-ruby/cyberweb-0"
ruby_add_rdepend ">=dev-ruby/determine_archive_type-0"
ruby_add_rdepend ">=dev-ruby/easycompile-0"
ruby_add_rdepend ">=dev-ruby/enable_autologin-0"
ruby_add_rdepend ">=dev-ruby/environment_information-0"
ruby_add_rdepend ">=dev-ruby/exams-0"
ruby_add_rdepend ">=dev-ruby/expand_cd_aliases-0"
ruby_add_rdepend ">=dev-ruby/extracter-0"
ruby_add_rdepend ">=dev-ruby/fetch_url-0"
ruby_add_rdepend ">=dev-ruby/file_duration-0"
ruby_add_rdepend ">=dev-ruby/find_line_in_file-0"
ruby_add_rdepend ">=dev-ruby/generate_rc_file-0"
ruby_add_rdepend ">=dev-ruby/generate_shell_completion-0"
ruby_add_rdepend ">=dev-ruby/inputrc-0"
ruby_add_rdepend ">=dev-ruby/install_ruby_project-0"
ruby_add_rdepend ">=dev-ruby/kde_autostart-0"
ruby_add_rdepend ">=dev-ruby/method_introspection-0"
ruby_add_rdepend ">=dev-ruby/mountpoints-0"
ruby_add_rdepend ">=dev-ruby/move_file-0"
ruby_add_rdepend ">=dev-ruby/multimedia_paradise-0"
ruby_add_rdepend ">=dev-ruby/opn-0"
ruby_add_rdepend ">=dev-ruby/pipe_handler-0"
ruby_add_rdepend ">=dev-ruby/proper_english-0"
ruby_add_rdepend ">=dev-ruby/rbt-0"
ruby_add_rdepend ">=dev-ruby/remove_comments-0"
ruby_add_rdepend ">=dev-ruby/remove_file_suffix-0"
ruby_add_rdepend ">=dev-ruby/replace_space_with_underscore-0"
ruby_add_rdepend ">=dev-ruby/ruby_token_parser-0"
ruby_add_rdepend ">=dev-ruby/sanitize_cookbook_dataset-0"
ruby_add_rdepend ">=dev-ruby/save_file-0"
ruby_add_rdepend ">=dev-ruby/scan_for_http_links-0"
ruby_add_rdepend ">=dev-ruby/serve_local_page-0"
ruby_add_rdepend ">=dev-ruby/show_directory_content-0"
ruby_add_rdepend ">=dev-ruby/show_rdoc_docu-0"
ruby_add_rdepend ">=dev-ruby/size_of-0"
ruby_add_rdepend ">=dev-ruby/stat_file-0"
ruby_add_rdepend ">=dev-ruby/streamripper-0"
ruby_add_rdepend ">=dev-ruby/string_colour_parser-0"
ruby_add_rdepend ">=dev-ruby/studium-0"
ruby_add_rdepend ">=dev-ruby/symlink_directory-0"
ruby_add_rdepend ">=dev-ruby/system_checker-0"
ruby_add_rdepend ">=dev-ruby/traverse_install-0"
ruby_add_rdepend ">=dev-ruby/try_syck-0"
ruby_add_rdepend ">=dev-ruby/url_action-0"
ruby_add_rdepend ">=dev-ruby/verbose_truth-0"
ruby_add_rdepend ">=dev-ruby/wget_wrapper-0"
ruby_add_rdepend ">=dev-ruby/zenity-0"

