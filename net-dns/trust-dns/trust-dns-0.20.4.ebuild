# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line-0.14.1
	adler-1.0.2
	ahash-0.7.4
	aho-corasick-0.7.15
	ansi_term-0.11.0
	async-attributes-1.1.2
	async-channel-1.6.1
	async-executor-1.4.0
	async-global-executor-2.0.2
	async-io-1.3.1
	async-lock-2.3.0
	async-mutex-1.4.0
	async-std-1.9.0
	async-std-resolver-0.20.4
	async-task-4.0.3
	async-trait-0.1.48
	atomic-waker-1.0.0
	atty-0.2.14
	autocfg-1.0.1
	backtrace-0.3.56
	base64-0.13.0
	bitflags-1.2.1
	blocking-1.0.2
	bumpalo-3.6.1
	bytes-1.0.1
	cache-padded-1.1.1
	cc-1.0.67
	cfg-if-0.1.10
	cfg-if-1.0.0
	clap-2.33.3
	concurrent-queue-1.2.2
	console-0.14.1
	core-foundation-0.9.1
	core-foundation-sys-0.8.2
	crossbeam-utils-0.8.3
	ctor-0.1.19
	data-encoding-2.3.2
	encode_unicode-0.3.6
	endian-type-0.1.2
	enum-as-inner-0.3.3
	env_logger-0.8.3
	event-listener-2.5.1
	fallible-iterator-0.2.0
	fallible-streaming-iterator-0.1.9
	fastrand-1.4.0
	fnv-1.0.7
	foreign-types-0.3.2
	foreign-types-shared-0.1.1
	form_urlencoded-1.0.1
	futures-0.3.13
	futures-channel-0.3.13
	futures-core-0.3.13
	futures-executor-0.3.13
	futures-io-0.3.13
	futures-lite-1.11.3
	futures-macro-0.3.13
	futures-sink-0.3.13
	futures-task-0.3.13
	futures-util-0.3.13
	getrandom-0.2.2
	gimli-0.23.0
	gloo-timers-0.2.1
	h2-0.3.1
	hashbrown-0.9.1
	hashbrown-0.11.2
	hashlink-0.7.0
	heck-0.3.2
	hermit-abi-0.1.18
	hostname-0.3.1
	http-0.2.3
	humantime-2.1.0
	idna-0.2.2
	indexmap-1.6.2
	instant-0.1.9
	ipconfig-0.2.2
	ipnet-2.3.0
	itoa-0.4.7
	js-sys-0.3.48
	kv-log-macro-1.0.7
	lazy_static-1.4.0
	libc-0.2.116
	libsqlite3-sys-0.23.2
	linked-hash-map-0.5.4
	lock_api-0.4.2
	log-0.4.14
	lru-cache-0.1.2
	match_cfg-0.1.0
	matches-0.1.8
	memchr-2.3.4
	miniz_oxide-0.4.4
	mio-0.7.10
	miow-0.3.6
	native-tls-0.2.7
	nb-connect-1.0.3
	nibble_vec-0.1.0
	ntapi-0.3.6
	num_cpus-1.13.0
	object-0.23.0
	once_cell-1.7.2
	openssl-0.10.33
	openssl-probe-0.1.2
	openssl-sys-0.9.61
	parking-2.0.0
	parking_lot-0.11.1
	parking_lot_core-0.8.3
	percent-encoding-2.1.0
	pin-project-1.0.5
	pin-project-internal-1.0.5
	pin-project-lite-0.2.6
	pin-utils-0.1.0
	pkg-config-0.3.19
	polling-2.0.2
	ppv-lite86-0.2.10
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro-hack-0.5.19
	proc-macro-nested-0.1.7
	proc-macro2-1.0.24
	quick-error-1.2.3
	quote-1.0.9
	radix_trie-0.2.1
	rand-0.8.3
	rand_chacha-0.3.0
	rand_core-0.6.2
	rand_hc-0.3.0
	redox_syscall-0.2.5
	regex-1.4.5
	regex-syntax-0.6.23
	remove_dir_all-0.5.3
	resolv-conf-0.7.0
	ring-0.16.20
	rusqlite-0.26.3
	rustc-demangle-0.1.18
	rustls-0.19.0
	schannel-0.1.19
	scopeguard-1.1.0
	sct-0.6.0
	security-framework-2.1.2
	security-framework-sys-2.1.1
	serde-1.0.124
	serde_derive-1.0.124
	slab-0.4.2
	smallvec-1.6.1
	socket2-0.3.19
	spin-0.5.2
	strsim-0.8.0
	structopt-0.3.21
	structopt-derive-0.4.14
	syn-1.0.64
	tempfile-3.2.0
	termcolor-1.1.2
	terminal_size-0.1.16
	textwrap-0.11.0
	thiserror-1.0.24
	thiserror-impl-1.0.24
	time-0.3.5
	time-macros-0.2.3
	tinyvec-1.1.1
	tinyvec_macros-0.1.0
	tokio-1.16.1
	tokio-macros-1.7.0
	tokio-native-tls-0.3.0
	tokio-openssl-0.6.1
	tokio-rustls-0.22.0
	tokio-util-0.6.4
	toml-0.5.8
	tracing-0.1.25
	tracing-core-0.1.17
	unicode-bidi-0.3.4
	unicode-normalization-0.1.17
	unicode-segmentation-1.7.1
	unicode-width-0.1.8
	unicode-xid-0.2.1
	untrusted-0.7.1
	url-2.2.1
	value-bag-1.0.0-alpha.6
	vcpkg-0.2.11
	vec-arena-1.0.0
	vec_map-0.8.2
	version_check-0.9.2
	waker-fn-1.1.0
	wasi-0.10.2+wasi-snapshot-preview1
	wasm-bindgen-0.2.71
	wasm-bindgen-backend-0.2.71
	wasm-bindgen-futures-0.4.21
	wasm-bindgen-macro-0.2.71
	wasm-bindgen-macro-support-0.2.71
	wasm-bindgen-shared-0.2.71
	web-sys-0.3.48
	webpki-0.21.4
	webpki-roots-0.21.0
	wepoll-sys-3.0.1
	widestring-0.4.3
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	winreg-0.6.2
"

inherit cargo

DESCRIPTION="A Rust based DNS client, server, and resolver"
HOMEPAGE="https://github.com/bluejekyll/trust-dns"
SRC_URI="
	https://github.com/bluejekyll/trust-dns/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris)
"

LICENSE="|| ( MIT Apache-2.0 )"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="|| ( >=dev-lang/rust-1.54.0 >=dev-lang/rust-bin-1.54.0 )"
RDEPEND="${DEPEND}"
BDEPEND=""

src_install() {
	dobin target/release/{named,resolve}
	einstalldocs
}
