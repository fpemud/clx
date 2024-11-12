# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_EXT=1
DISTUTILS_SINGLE_IMPL=1
DISTUTILS_USE_PEP517=maturin
PYTHON_COMPAT=( python3_{10..13} )

CRATES="
	aho-corasick@1.1.3
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	autocfg@1.4.0
	base64@0.13.1
	bitflags@1.3.2
	bitflags@2.6.0
	byteorder@1.5.0
	cc@1.1.35
	cfg-if@1.0.0
	colorchoice@1.0.3
	console@0.15.8
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	darling@0.20.10
	darling_core@0.20.10
	darling_macro@0.20.10
	derive_builder@0.20.2
	derive_builder_core@0.20.2
	derive_builder_macro@0.20.2
	either@1.13.0
	encode_unicode@0.3.6
	env_filter@0.1.2
	env_logger@0.11.5
	errno@0.3.9
	esaxx-rs@0.1.10
	fastrand@2.1.1
	fnv@1.0.7
	getrandom@0.2.15
	heck@0.5.0
	humantime@2.1.0
	ident_case@1.0.1
	indicatif@0.17.8
	indoc@2.0.5
	instant@0.1.13
	is_terminal_polyfill@1.70.1
	itertools@0.11.0
	itertools@0.12.1
	itoa@1.0.11
	lazy_static@1.5.0
	libc@0.2.161
	linux-raw-sys@0.4.14
	log@0.4.22
	macro_rules_attribute-proc_macro@0.2.0
	macro_rules_attribute@0.2.0
	matrixmultiply@0.3.9
	memchr@2.7.4
	memoffset@0.9.1
	minimal-lexical@0.2.1
	monostate-impl@0.1.13
	monostate@0.1.13
	ndarray@0.15.6
	ndarray@0.16.1
	nom@7.1.3
	num-complex@0.4.6
	num-integer@0.1.46
	num-traits@0.2.19
	number_prefix@0.4.0
	numpy@0.22.1
	once_cell@1.20.2
	onig@6.4.0
	onig_sys@69.8.1
	paste@1.0.15
	pkg-config@0.3.31
	portable-atomic-util@0.2.3
	portable-atomic@1.9.0
	ppv-lite86@0.2.20
	proc-macro2@1.0.89
	pyo3-build-config@0.22.5
	pyo3-ffi@0.22.5
	pyo3-macros-backend@0.22.5
	pyo3-macros@0.22.5
	pyo3@0.22.5
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rawpointer@0.2.1
	rayon-cond@0.3.0
	rayon-core@1.12.1
	rayon@1.10.0
	regex-automata@0.4.8
	regex-syntax@0.8.5
	regex@1.11.1
	rustc-hash@1.1.0
	rustix@0.38.39
	ryu@1.0.18
	serde@1.0.214
	serde_derive@1.0.214
	serde_json@1.0.132
	shlex@1.3.0
	smallvec@1.13.2
	spm_precompiled@0.1.4
	strsim@0.11.1
	syn@2.0.87
	target-lexicon@0.12.16
	tempfile@3.13.0
	thiserror-impl@1.0.68
	thiserror@1.0.68
	unicode-ident@1.0.13
	unicode-normalization-alignments@0.1.12
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode_categories@0.1.1
	unindent@0.2.3
	utf8parse@0.2.2
	wasi@0.11.0+wasi-snapshot-preview1
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.52.6
	zerocopy-derive@0.7.35
	zerocopy@0.7.35

	adler2@2.0.0
	anes@0.1.6
	assert_approx_eq@1.1.0
	base64@0.22.1
	bit-set@0.5.3
	bit-vec@0.6.3
	bumpalo@3.16.0
	cast@0.3.0
	cc@1.1.37
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	clap@4.5.20
	clap_builder@4.5.20
	clap_lex@0.7.2
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	crc32fast@1.4.2
	criterion-plot@0.5.0
	criterion@0.5.1
	crunchy@0.2.2
	dirs-sys@0.4.1
	dirs@5.0.1
	displaydoc@0.2.5
	fancy-regex@0.13.0
	fastrand@2.2.0
	flate2@1.0.34
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	half@2.4.1
	hermit-abi@0.4.0
	hf-hub@0.3.2
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	idna@1.0.3
	idna_adapter@1.2.0
	is-terminal@0.4.13
	itertools@0.10.5
	js-sys@0.3.72
	libc@0.2.162
	libredox@0.1.3
	litemap@0.7.3
	miniz_oxide@0.8.0
	native-tls@0.2.12
	nu-ansi-term@0.46.0
	oorandom@11.1.4
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.104
	openssl@0.10.68
	option-ext@0.2.0
	overload@0.1.1
	percent-encoding@2.3.1
	pin-project-lite@0.2.15
	plotters-backend@0.3.7
	plotters-svg@0.3.7
	plotters@0.3.7
	ppv-lite86@0.2.20
	redox_users@0.4.6
	ring@0.17.8
	rustix@0.38.40
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustls@0.23.16
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.26
	security-framework-sys@2.12.1
	security-framework@2.11.1
	serde@1.0.214
	serde_derive@1.0.214
	serde_json@1.0.132
	sharded-slab@0.1.7
	shlex@1.3.0
	smallvec@1.13.2
	spin@0.9.8
	spm_precompiled@0.1.4
	stable_deref_trait@1.2.0
	strsim@0.11.1
	subtle@2.6.1
	syn@2.0.87
	synstructure@0.13.1
	tempfile@3.14.0
	thiserror-impl@1.0.69
	thiserror@1.0.69
	thread_local@1.1.8
	tinystr@0.7.6
	tinytemplate@1.2.1
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	unicode-ident@1.0.13
	unicode-normalization-alignments@0.1.12
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode_categories@0.1.1
	untrusted@0.9.0
	ureq@2.10.1
	url@2.5.3
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	valuable@0.1.0
	vcpkg@0.2.15
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen@0.2.95
	web-sys@0.3.72
	webpki-roots@0.26.6
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	write16@1.0.0
	writeable@0.5.5
	yoke-derive@0.7.4
	yoke@0.7.4
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zerofrom-derive@0.1.4
	zerofrom@0.1.4
	zeroize@1.8.1
	zerovec-derive@0.10.3
	zerovec@0.10.4
"

inherit cargo distutils-r1

DESCRIPTION="Implementation of today's most used tokenizers"
HOMEPAGE="https://github.com/huggingface/tokenizers"
SRC_URI="
	https://github.com/huggingface/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD-2 BSD ISC MIT MPL-2.0
	Unicode-DFS-2016
"
SLOT="0"
KEYWORDS="~amd64"

BDEPEND="
	test? ( sci-libs/datasets[${PYTHON_SINGLE_USEDEP}] )
	$(python_gen_cond_dep '
		dev-python/setuptools-rust[${PYTHON_USEDEP}]
	')
"

distutils_enable_tests pytest

QA_FLAGS_IGNORED="/usr/bin/cli .*/site-packages/tokenizers/.*so"

pkg_setup() {
	rust_pkg_setup
	python-single-r1_pkg_setup
}

src_unpack() {
	cargo_src_unpack
}

src_prepare() {
	default
	cd bindings/python
	eapply "${FILESDIR}"/${P}-test.patch
	distutils-r1_src_prepare
}

src_configure() {
	cd tokenizers
	cargo_src_configure
	cd ../bindings/python
	distutils-r1_src_configure
}

src_compile() {
	cd tokenizers
	cargo_src_compile
	cd ../bindings/python
	distutils-r1_src_compile
}

src_test() {
	cd tokenizers
	# Tests do not work
	#cargo_src_test
	cd ../bindings/python
	distutils-r1_src_test
}

src_install() {
	#cd tokenizers
	#cargo_src_install
	#cd ../bindings/python
	cd bindings/python
	distutils-r1_src_install
}
