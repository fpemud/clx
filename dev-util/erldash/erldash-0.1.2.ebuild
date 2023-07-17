# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	adler32-1.2.0
	anyhow-1.0.57
	async-channel-1.6.1
	async-executor-1.4.1
	async-fs-1.5.0
	async-io-1.6.0
	async-lock-2.5.0
	async-net-1.6.1
	async-process-1.4.0
	async-task-4.2.0
	atomic-waker-1.0.0
	atty-0.2.14
	autocfg-1.1.0
	bitflags-1.3.2
	blocking-1.2.0
	byteorder-1.4.3
	cache-padded-1.2.0
	cassowary-0.3.0
	cc-1.0.73
	cfg-if-1.0.0
	clap-3.1.17
	clap_derive-3.1.7
	clap_lex-0.2.0
	concurrent-queue-1.2.2
	crc32fast-1.3.2
	crossterm-0.23.2
	crossterm_winapi-0.9.0
	dirs-4.0.0
	dirs-sys-0.3.7
	eetf-0.8.0
	erl_dist-0.5.1
	erl_rpc-0.1.2
	event-listener-2.5.2
	fastrand-1.7.0
	futures-0.3.21
	futures-channel-0.3.21
	futures-core-0.3.21
	futures-executor-0.3.21
	futures-io-0.3.21
	futures-lite-1.12.0
	futures-macro-0.3.21
	futures-sink-0.3.21
	futures-task-0.3.21
	futures-util-0.3.21
	getrandom-0.2.6
	hashbrown-0.11.2
	heck-0.4.0
	hermit-abi-0.1.19
	indexmap-1.8.1
	instant-0.1.12
	itoa-1.0.1
	lazy_static-1.4.0
	libc-0.2.125
	libflate-1.2.0
	libflate_lz77-1.1.0
	lock_api-0.4.7
	log-0.4.17
	md5-0.7.0
	memchr-2.5.0
	mio-0.8.2
	miow-0.3.7
	ntapi-0.3.7
	num-0.4.0
	num-bigint-0.4.3
	num-complex-0.4.1
	num-integer-0.1.45
	num-iter-0.1.43
	num-rational-0.4.0
	num-traits-0.2.15
	num_threads-0.1.6
	once_cell-1.10.0
	ordered-float-2.10.0
	ordered-float-3.0.0
	os_str_bytes-6.0.0
	parking-2.0.0
	parking_lot-0.12.0
	parking_lot_core-0.9.3
	pin-project-lite-0.2.9
	pin-utils-0.1.0
	polling-2.2.0
	ppv-lite86-0.2.16
	proc-macro-error-1.0.4
	proc-macro-error-attr-1.0.4
	proc-macro2-1.0.38
	quote-1.0.18
	rand-0.8.5
	rand_chacha-0.3.1
	rand_core-0.6.3
	redox_syscall-0.2.13
	redox_users-0.4.3
	rle-decode-fast-1.0.3
	scopeguard-1.1.0
	signal-hook-0.3.13
	signal-hook-mio-0.2.3
	signal-hook-registry-1.4.0
	simplelog-0.12.0
	slab-0.4.6
	smallvec-1.8.0
	smol-1.2.5
	socket2-0.4.4
	strsim-0.10.0
	syn-1.0.92
	termcolor-1.1.3
	textwrap-0.15.0
	thiserror-1.0.31
	thiserror-impl-1.0.31
	time-0.3.9
	time-macros-0.2.4
	tui-0.18.0
	unicode-segmentation-1.9.0
	unicode-width-0.1.9
	unicode-xid-0.2.3
	version_check-0.9.4
	waker-fn-1.1.0
	wasi-0.10.2+wasi-snapshot-preview1
	wasi-0.11.0+wasi-snapshot-preview1
	wepoll-ffi-0.1.2
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.36.1
	windows_aarch64_msvc-0.36.1
	windows_i686_gnu-0.36.1
	windows_i686_msvc-0.36.1
	windows_x86_64_gnu-0.36.1
	windows_x86_64_msvc-0.36.1
"

inherit cargo

DESCRIPTION="A simple, terminal-based Erlang dashboard written in Rust"
HOMEPAGE="https://github.com/sile/erldash"
SRC_URI="
	https://github.com/sile/erldash/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})
"

LICENSE="MIT Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
BDEPEND="
	>=virtual/rust-1.31.0
"

src_install() {
	cargo_src_install
	einstalldocs
}
