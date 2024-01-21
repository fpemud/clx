# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	adler@1.0.2
	aho-corasick@0.7.20
	alloc-no-stdlib@2.0.4
	alloc-stdlib@0.2.2
	anstream@0.3.2
	anstyle@0.3.5
	anstyle@1.0.1
	anstyle-parse@0.2.1
	anstyle-query@1.0.0
	anstyle-wincon@1.0.2
	anyhow@1.0.70
	assert_cmd@2.0.10
	atty@0.2.14
	autocfg@1.1.0
	base64@0.21.0
	bincode@1.3.3
	bitflags@1.3.2
	block-buffer@0.9.0
	brotli@3.3.4
	brotli-decompressor@2.3.4
	bstr@1.4.0
	bumpalo@3.12.0
	bytes@1.4.0
	cc@1.0.79
	cfg-if@1.0.0
	chardetng@0.1.17
	clap@4.3.21
	clap_builder@4.3.21
	clap_complete@4.3.2
	clap_derive@4.3.12
	clap_lex@0.5.0
	colorchoice@1.0.0
	console@0.15.5
	cookie@0.16.2
	cookie@0.17.0
	cookie_store@0.16.1
	cookie_store@0.20.0
	core-foundation@0.9.3
	core-foundation-sys@0.8.4
	cpufeatures@0.2.6
	crc32fast@1.3.2
	difflib@0.4.0
	digest@0.9.0
	digest_auth@0.3.0
	dirs@5.0.1
	dirs-sys@0.4.1
	doc-comment@0.3.3
	either@1.8.1
	encode_unicode@0.3.6
	encoding_rs@0.8.32
	encoding_rs_io@0.1.7
	errno@0.3.1
	errno-dragonfly@0.1.2
	fastrand@1.9.0
	flate2@1.0.25
	float-cmp@0.9.0
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.1.0
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-io@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	generic-array@0.14.7
	getopts@0.2.21
	getrandom@0.2.9
	h2@0.3.16
	hashbrown@0.12.3
	heck@0.4.1
	hermit-abi@0.1.19
	hermit-abi@0.2.6
	hermit-abi@0.3.1
	hex@0.4.3
	http@0.2.9
	http-body@0.4.5
	httparse@1.8.0
	httpdate@1.0.2
	hyper@0.14.25
	hyper-rustls@0.24.0
	hyper-tls@0.5.0
	idna@0.2.3
	idna@0.3.0
	indexmap@1.9.3
	indicatif@0.17.7
	indoc@2.0.4
	instant@0.1.12
	io-lifetimes@1.0.10
	ipnet@2.7.2
	is-terminal@0.4.7
	itertools@0.10.5
	itoa@1.0.6
	js-sys@0.3.61
	jsonxf@1.1.1
	lazy_static@1.4.0
	libc@0.2.141
	line-wrap@0.1.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.3.1
	log@0.4.17
	matches@0.1.10
	md-5@0.9.1
	memchr@2.5.0
	mime@0.3.17
	mime2ext@0.1.52
	mime_guess@2.0.4
	miniz_oxide@0.6.2
	mio@0.8.6
	native-tls@0.2.11
	network-interface@1.0.3
	normalize-line-endings@0.3.0
	num-traits@0.2.15
	num_cpus@1.15.0
	number_prefix@0.4.0
	once_cell@1.17.1
	onig@6.4.0
	onig_sys@69.8.1
	opaque-debug@0.3.0
	openssl@0.10.49
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.84
	option-ext@0.2.0
	os_display@0.1.3
	pem@3.0.2
	percent-encoding@2.2.0
	pin-project-lite@0.2.9
	pin-utils@0.1.0
	pkg-config@0.3.26
	plist@1.4.3
	portable-atomic@1.4.3
	ppv-lite86@0.2.17
	predicates@3.0.2
	predicates-core@1.0.6
	predicates-tree@1.0.9
	proc-macro2@1.0.56
	psl-types@2.0.11
	publicsuffix@2.2.3
	quick-xml@0.28.1
	quote@1.0.26
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex@1.7.3
	regex-automata@0.1.10
	regex-syntax@0.6.29
	regex-syntax@0.7.5
	reqwest@0.11.18
	ring@0.16.20
	roff@0.2.1
	rpassword@7.2.0
	rtoolbox@0.0.1
	rustix@0.37.11
	rustls@0.21.0
	rustls-native-certs@0.6.2
	rustls-pemfile@1.0.2
	rustls-webpki@0.100.1
	ryu@1.0.13
	safemem@0.3.3
	same-file@1.0.6
	schannel@0.1.21
	sct@0.7.0
	security-framework@2.8.2
	security-framework-sys@2.8.0
	serde@1.0.159
	serde_derive@1.0.159
	serde_json@1.0.95
	serde_urlencoded@0.7.1
	sha2@0.9.9
	slab@0.4.8
	socket2@0.4.9
	spin@0.5.2
	strsim@0.10.0
	syn@1.0.109
	syn@2.0.13
	syntect@5.1.0
	tempfile@3.5.0
	termcolor@1.2.0
	terminal_size@0.2.6
	termtree@0.4.1
	thiserror@1.0.40
	thiserror-impl@1.0.40
	time@0.3.20
	time-core@0.1.0
	time-macros@0.2.8
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.27.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.24.0
	tokio-socks@0.5.1
	tokio-util@0.7.7
	tower-service@0.3.2
	tracing@0.1.37
	tracing-core@0.1.30
	try-lock@0.2.4
	typenum@1.16.0
	unicase@2.6.0
	unicode-bidi@0.3.13
	unicode-ident@1.0.8
	unicode-normalization@0.1.22
	unicode-width@0.1.10
	untrusted@0.7.1
	url@2.3.1
	utf8parse@0.2.1
	vcpkg@0.2.15
	version_check@0.9.4
	wait-timeout@0.2.0
	walkdir@2.3.3
	want@0.3.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.84
	wasm-bindgen-backend@0.2.84
	wasm-bindgen-futures@0.4.34
	wasm-bindgen-macro@0.2.84
	wasm-bindgen-macro-support@0.2.84
	wasm-bindgen-shared@0.2.84
	web-sys@0.3.61
	webpki@0.22.0
	webpki-roots@0.22.6
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.5
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows-sys@0.42.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.0
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.0
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.0
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.0
	winreg@0.10.1
	yaml-rust@0.4.5
"

inherit cargo

DESCRIPTION="Friendly and fast tool for sending HTTP requests"
HOMEPAGE="https://github.com/ducaale/xh"
SRC_URI="
	https://github.com/ducaale/xh/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="
	>=virtual/rust-1.31.0
"

src_install() {
	cargo_src_install
	einstalldocs
}
