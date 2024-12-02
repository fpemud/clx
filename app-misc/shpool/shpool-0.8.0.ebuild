# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	aho-corasick@1.1.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.6.13
	anstyle-parse@0.2.3
	anstyle-query@1.0.2
	anstyle-wincon@3.0.2
	anstyle@1.0.8
	anyhow@1.0.86
	arrayvec@0.7.4
	assert_matches@1.5.0
	autocfg@1.1.0
	bindgen@0.69.4
	bitflags@1.3.2
	bitflags@2.4.2
	bumpalo@3.15.4
	byteorder@1.5.0
	cc@1.0.90
	cexpr@0.6.0
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	chrono@0.4.38
	clang-sys@1.8.1
	clap@4.5.16
	clap_builder@4.5.15
	clap_derive@4.5.13
	clap_lex@0.7.0
	colorchoice@1.0.0
	core-foundation-sys@0.8.6
	crossbeam-channel@0.5.13
	crossbeam-utils@0.8.19
	daemonize@0.5.0
	either@1.10.0
	equivalent@1.0.1
	errno-dragonfly@0.1.2
	errno@0.2.8
	errno@0.3.8
	fastrand@2.0.1
	filetime@0.2.23
	fsevent-sys@4.1.0
	glob@0.3.1
	hashbrown@0.14.3
	heck@0.5.0
	home@0.5.9
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	indexmap@2.2.5
	inotify-sys@0.1.5
	inotify@0.9.6
	itertools@0.12.1
	itoa@1.0.10
	js-sys@0.3.69
	kqueue-sys@1.0.4
	kqueue@1.0.8
	lazy_static@1.5.0
	lazycell@1.3.0
	libc@0.2.155
	libloading@0.8.3
	libproc@0.14.8
	linux-raw-sys@0.4.13
	log@0.4.22
	memchr@2.7.1
	memoffset@0.7.1
	memoffset@0.9.1
	minimal-lexical@0.2.1
	mio@0.8.11
	motd@0.2.2
	nix@0.26.4
	nix@0.28.0
	nom@7.1.3
	notify@6.1.1
	ntest@0.9.3
	ntest_test_cases@0.9.3
	ntest_timeout@0.9.3
	num-traits@0.2.18
	once_cell@1.19.0
	paste@1.0.15
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	proc-macro-crate@3.1.0
	proc-macro2@1.0.79
	quote@1.0.35
	redox_syscall@0.4.1
	regex-automata@0.4.6
	regex-syntax@0.8.2
	regex@1.10.6
	rmp-serde@1.3.0
	rmp@0.8.14
	rustc-hash@1.1.0
	rustix@0.38.31
	ryu@1.0.17
	same-file@1.0.6
	serde@1.0.204
	serde_derive@1.0.204
	serde_json@1.0.121
	serde_spanned@0.6.5
	sharded-slab@0.1.7
	shell-words@1.1.0
	shlex@1.3.0
	shpool_pty@0.3.1
	shpool_vt100@0.1.2
	signal-hook-registry@1.4.1
	signal-hook@0.3.17
	smallvec@1.13.1
	strip-ansi-escapes@0.2.0
	strsim@0.11.0
	syn@1.0.109
	syn@2.0.52
	tempfile@3.12.0
	termini@1.0.0
	thread_local@1.1.8
	toml@0.8.12
	toml_datetime@0.6.5
	toml_edit@0.21.1
	toml_edit@0.22.12
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	unicode-ident@1.0.12
	unicode-width@0.1.11
	utf8parse@0.2.1
	valuable@0.1.0
	vte@0.11.1
	vte@0.12.1
	vte_generate_state_changes@0.1.1
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	which@6.0.0
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
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
	winnow@0.5.40
	winnow@0.6.13
"

inherit cargo

DESCRIPTION="shpool is a mechanism for establishing lightweight persistant shell sessions"
HOMEPAGE="https://github.com/shell-pool/shpool"
SRC_URI="
	https://github.com/shell-pool/shpool/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD CC0-1.0 ISC MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	cargo_src_install --path shpool
	einstalldocs
}
