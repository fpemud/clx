# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.7.8
	ahash@0.8.11
	aho-corasick@1.1.3
	aliasable@0.1.3
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	anstream@0.6.17
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.9
	any_ascii@0.1.7
	anyhow@1.0.91
	arbitrary@1.3.2
	arrayref@0.3.9
	arrayvec@0.5.2
	arrayvec@0.7.6
	askama@0.12.1
	askama_derive@0.12.5
	askama_escape@0.10.3
	askama_parser@0.2.1
	assert_cmd@1.0.8
	assert_cmd@2.0.16
	async-channel@2.3.1
	async-compression@0.4.17
	async-trait@0.1.83
	async-tungstenite@0.28.0
	atomic-polyfill@1.0.3
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.22.1
	basic-toml@0.1.9
	beef@0.5.2
	bincode@1.3.3
	bindgen@0.70.1
	bitflags@1.3.2
	bitflags@2.6.0
	blake3@1.5.4
	block-buffer@0.10.4
	bstr@0.2.17
	bstr@1.10.0
	build-deps@0.1.4
	bumpalo@3.16.0
	bytecheck@0.6.12
	bytecheck@0.8.0
	bytecheck_derive@0.6.12
	bytecheck_derive@0.8.0
	byteorder@1.5.0
	bytes@1.8.0
	bytesize@1.3.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	camino@1.1.9
	cargo-platform@0.1.8
	cargo_metadata@0.15.4
	cast@0.3.0
	cbindgen@0.27.0
	cc@1.1.31
	cexpr@0.6.0
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	chrono@0.4.38
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.4.11
	clap_builder@4.4.11
	clap_complete@4.5.3
	clap_derive@4.4.7
	clap_lex@0.6.0
	clap_mangen@0.2.24
	cmake@0.1.51
	colorchoice@1.0.3
	colored@1.9.4
	colored@2.1.0
	comfy-table@7.1.1
	compiletest_rs@0.6.0
	concurrent-queue@2.5.0
	console@0.15.8
	console_error_panic_hook@0.1.7
	constant_time_eq@0.3.1
	convert_case@0.4.0
	cooked-waker@5.0.0
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	corosensei@0.2.1
	counter@0.5.7
	cpufeatures@0.2.14
	cranelift-bforest@0.110.2
	cranelift-bitset@0.110.3
	cranelift-codegen-meta@0.110.3
	cranelift-codegen-shared@0.110.3
	cranelift-codegen@0.110.2
	cranelift-control@0.110.3
	cranelift-entity@0.110.2
	cranelift-frontend@0.110.2
	cranelift-isle@0.110.2
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	criterion-plot@0.5.0
	criterion@0.5.1
	critical-section@1.2.0
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	crypto-common@0.1.6
	csv-core@0.1.11
	csv@1.3.0
	ctor@0.1.26
	cynic-codegen@3.8.0
	cynic-parser@0.4.5
	cynic-proc-macros@3.8.0
	cynic@3.8.0
	darling@0.14.4
	darling@0.20.10
	darling_core@0.14.4
	darling_core@0.20.10
	darling_macro@0.14.4
	darling_macro@0.20.10
	dashmap@5.5.3
	dashmap@6.1.0
	data-encoding@2.6.0
	deflate64@0.1.9
	deranged@0.3.11
	derive_arbitrary@1.3.2
	derive_builder@0.12.0
	derive_builder_core@0.12.0
	derive_builder_macro@0.12.0
	derive_more-impl@1.0.0
	derive_more@0.99.18
	derive_more@1.0.0
	dialoguer@0.11.0
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dirs-sys@0.3.7
	dirs@4.0.0
	displaydoc@0.2.5
	distance@0.4.0
	doc-comment@0.3.3
	document-features@0.2.10
	dotenvy@0.15.7
	downcast-rs@1.2.1
	dunce@1.0.5
	dyn-clone@1.0.17
	dynasm@1.2.3
	dynasmrt@1.2.3
	educe@0.5.11
	either@1.13.0
	encode_unicode@0.3.6
	enum-iterator-derive@0.7.0
	enum-iterator@0.7.0
	enum-ordinalize-derive@4.3.1
	enum-ordinalize@4.3.0
	enumset@1.1.5
	enumset_derive@0.10.0
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	erased-serde@0.3.31
	errno@0.3.9
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	fallible-iterator@0.3.0
	fastrand@2.1.1
	fern@0.6.2
	field-offset@0.3.6
	filetime@0.2.25
	fixedbitset@0.4.2
	flate2@1.0.34
	float-cmp@0.9.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	fs-err@2.11.0
	fs_extra@1.3.0
	fuser@0.14.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.3.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-timer@3.0.3
	futures-util@0.3.31
	futures@0.3.31
	generic-array@0.14.7
	getopts@0.2.21
	getrandom@0.2.15
	ghost@0.1.17
	gimli@0.28.1
	gimli@0.31.1
	glob@0.3.1
	globset@0.4.15
	goblin@0.8.2
	graphql-ws-client@0.11.0
	gumdrop@0.8.1
	gumdrop_derive@0.8.1
	half@1.8.3
	half@2.4.1
	handlebars@3.5.5
	harsh@0.2.2
	hash32@0.2.1
	hashbrown@0.11.2
	hashbrown@0.12.3
	hashbrown@0.13.2
	hashbrown@0.14.5
	hashbrown@0.15.0
	heapless@0.7.17
	heck@0.3.3
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hexdump@0.1.2
	hmac@0.12.1
	http-body-util@0.1.2
	http-body@1.0.1
	http-serde@2.1.1
	http@1.1.0
	httparse@1.9.5
	httpdate@1.0.3
	humantime@2.1.0
	hyper-rustls@0.27.3
	hyper-tls@0.6.0
	hyper-tungstenite@0.13.0
	hyper-util@0.1.9
	hyper@1.5.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	id-arena@2.2.1
	ident_case@1.0.1
	idna@0.2.3
	idna@0.5.0
	ignore@0.4.23
	indexmap-nostd@0.4.0
	indexmap@1.9.3
	indexmap@2.6.0
	indicatif@0.17.8
	inkwell@0.5.0
	inkwell_internals@0.10.0
	inline-c-macro@0.1.7
	inline-c@0.1.8
	inout@0.1.3
	insta@1.40.0
	instant@0.1.13
	interfaces@0.0.9
	inventory@0.2.3
	ipnet@2.10.1
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.12.1
	itoa@1.0.11
	jobserver@0.1.32
	js-sys@0.3.72
	lalrpop-util@0.20.2
	lazy_static@1.5.0
	leb128@0.2.5
	lexical-sort@0.3.1
	libc@0.2.161
	libfuzzer-sys@0.4.7
	libloading@0.8.5
	libm@0.2.8
	libredox@0.1.3
	libyml@0.0.5
	linked-hash-map@0.5.6
	linked_hash_set@0.1.4
	linux-raw-sys@0.4.14
	litrs@0.4.1
	llvm-sys@180.0.0
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	logos-codegen@0.14.2
	logos-derive@0.14.2
	logos@0.14.2
	loupe-derive@0.1.3
	loupe@0.1.3
	lz4_flex@0.11.3
	lzma-rs@0.3.0
	lzma-sys@0.1.20
	mac_address@1.1.7
	mach2@0.4.2
	managed@0.8.0
	matchers@0.1.0
	matches@0.1.10
	md5@0.7.0
	memchr@2.7.4
	memmap2@0.5.10
	memmap2@0.6.2
	memoffset@0.7.1
	memoffset@0.9.1
	merge-streams@0.1.2
	mime@0.3.17
	mime_guess@2.0.5
	minicov@0.3.6
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@1.0.2
	miow@0.3.7
	more-asserts@0.2.2
	multi-stash@0.2.0
	munge@0.4.1
	munge_macro@0.4.1
	native-tls@0.2.12
	nix@0.26.4
	nix@0.28.0
	nom@7.1.3
	normalize-line-endings@0.3.0
	normpath@1.1.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.19
	num_cpus@1.16.0
	num_enum@0.5.11
	num_enum_derive@0.5.11
	number_prefix@0.4.0
	object@0.30.4
	object@0.32.2
	object@0.36.5
	once_cell@1.20.2
	oorandom@11.1.4
	opener@0.6.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.104
	openssl@0.10.68
	ouroboros@0.18.4
	ouroboros_macro@0.18.4
	overload@0.1.1
	page_size@0.6.0
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	path-clean@1.0.1
	pathdiff@0.2.2
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pest@2.7.14
	pest_derive@2.7.14
	pest_generator@2.7.14
	pest_meta@2.7.14
	petgraph@0.6.5
	pin-project-internal@1.1.7
	pin-project-lite@0.2.15
	pin-project@1.1.7
	pin-utils@0.1.0
	pkg-config@0.3.31
	plain@0.2.3
	plotters-backend@0.3.7
	plotters-svg@0.3.7
	plotters@0.3.7
	portable-atomic@1.9.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	predicates-core@1.0.8
	predicates-tree@1.0.11
	predicates@2.1.5
	predicates@3.1.2
	pretty_assertions@1.4.1
	prettyplease@0.2.25
	proc-macro-crate@1.3.1
	proc-macro-error-attr2@2.0.0
	proc-macro-error-attr@1.0.4
	proc-macro-error2@2.0.1
	proc-macro-error@1.0.4
	proc-macro2-diagnostics@0.10.1
	proc-macro2@1.0.89
	ptr_meta@0.1.4
	ptr_meta@0.3.0
	ptr_meta_derive@0.1.4
	ptr_meta_derive@0.3.0
	pulldown-cmark@0.8.0
	quick-error@2.0.1
	quinn-proto@0.11.8
	quinn-udp@0.5.5
	quinn@0.11.5
	quote@1.0.37
	rancor@0.1.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	redox_users@0.4.6
	ref-cast-impl@1.0.23
	ref-cast@1.0.23
	regalloc2@0.9.3
	regex-automata@0.1.10
	regex-automata@0.4.8
	regex-lite@0.1.6
	regex-syntax@0.6.29
	regex-syntax@0.8.5
	regex@1.11.1
	region@3.0.2
	rend@0.5.2
	replace_with@0.1.7
	reqwest@0.12.8
	ring@0.17.8
	rkyv@0.8.8
	rkyv_derive@0.8.8
	rmp-serde@1.3.0
	rmp@0.8.14
	roff@0.2.2
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.0.0
	rustc_version@0.3.3
	rustc_version@0.4.1
	rustfix@0.5.1
	rustix@0.38.37
	rustls-native-certs@0.8.0
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustls@0.22.4
	rustls@0.23.15
	rustversion@1.0.18
	rusty_jsc@0.1.0
	rusty_jsc_macros@0.1.0
	rusty_jsc_sys@0.1.0
	rusty_pool@0.7.0
	ruzstd@0.5.0
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.26
	schemars@0.8.21
	schemars_derive@0.8.21
	scoped-tls@1.0.1
	scopeguard@1.2.0
	scroll@0.12.0
	scroll_derive@0.12.0
	security-framework-sys@2.12.0
	security-framework@2.11.1
	self_cell@1.0.4
	semver-parser@0.10.2
	semver@0.11.0
	semver@1.0.23
	seq-macro@0.3.5
	serde-wasm-bindgen@0.4.5
	serde@1.0.213
	serde_bytes@0.11.15
	serde_cbor@0.11.2
	serde_derive@1.0.213
	serde_derive_internals@0.29.1
	serde_json@1.0.132
	serde_path_to_error@0.1.16
	serde_spanned@0.6.8
	serde_urlencoded@0.7.1
	serde_yml@0.0.12
	serial_test@2.0.0
	serial_test_derive@2.0.0
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shared-buffer@0.1.4
	shell-words@1.1.0
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	simdutf8@0.1.5
	similar@2.6.0
	siphasher@0.3.11
	slab@0.4.9
	slice-group-by@0.3.1
	smallvec@1.13.2
	smawk@0.3.2
	smoltcp@0.8.2
	socket2@0.5.7
	spin@0.9.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	string-interner@0.17.0
	strsim@0.10.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.85
	sync_wrapper@1.0.1
	tar@0.4.42
	target-lexicon@0.11.2
	target-lexicon@0.12.16
	target-triple@0.1.3
	tempfile@3.13.0
	term@0.7.0
	termcolor@1.4.1
	terminal_size@0.3.0
	termios@0.3.3
	termtree@0.4.1
	test-log-macros@0.2.16
	test-log@0.2.16
	tester@0.9.1
	textwrap@0.16.1
	thiserror-impl@1.0.65
	thiserror@1.0.65
	thread_local@1.1.8
	time-core@0.1.2
	time-macros@0.2.18
	time@0.1.45
	time@0.3.36
	tinytemplate@1.2.1
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tldextract@0.6.0
	tokio-macros@2.4.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.25.0
	tokio-rustls@0.26.0
	tokio-serde@0.9.0
	tokio-socks@0.5.2
	tokio-stream@0.1.16
	tokio-tungstenite@0.21.0
	tokio-tungstenite@0.24.0
	tokio-util@0.7.12
	tokio@1.41.0
	toml@0.5.11
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.19.15
	toml_edit@0.22.22
	tower-http@0.5.2
	tower-layer@0.3.3
	tower-service@0.3.3
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-serde@0.1.3
	tracing-subscriber@0.3.18
	tracing-test-macro@0.2.5
	tracing-test@0.2.5
	tracing-wasm@0.2.1
	tracing@0.1.40
	try-lock@0.2.5
	trybuild@1.0.101
	tungstenite@0.21.0
	tungstenite@0.24.0
	twox-hash@1.6.3
	typenum@1.17.0
	typetag-impl@0.1.8
	typetag@0.1.8
	ucd-trie@0.1.7
	unicase@2.8.0
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode-xid@0.2.6
	uniffi@0.27.3
	uniffi_bindgen@0.27.3
	uniffi_build@0.27.3
	uniffi_checksum_derive@0.27.3
	uniffi_core@0.27.3
	uniffi_macros@0.27.3
	uniffi_meta@0.27.3
	uniffi_testing@0.27.3
	uniffi_udl@0.27.3
	unix_mode@0.1.4
	untrusted@0.9.0
	ureq@2.10.1
	url@2.5.2
	urlencoding@2.1.3
	utf-8@0.7.6
	utf8parse@0.2.2
	uuid@1.11.0
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.5
	wai-bindgen-gen-core@0.2.3
	wai-bindgen-gen-rust-wasm@0.2.3
	wai-bindgen-gen-rust@0.2.3
	wai-bindgen-gen-wasmer@0.2.3
	wai-bindgen-rust-impl@0.2.3
	wai-bindgen-rust@0.2.3
	wai-bindgen-wasmer-impl@0.2.3
	wai-parser@0.2.3
	wait-timeout@0.2.0
	waker-fn@1.2.0
	walkdir@2.5.0
	want@0.3.1
	wasi@0.10.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.45
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen-test-macro@0.3.45
	wasm-bindgen-test@0.3.45
	wasm-bindgen@0.2.95
	wasm-coredump-builder@0.1.22
	wasm-coredump-encoder@0.1.22
	wasm-coredump-types@0.1.22
	wasm-encoder@0.216.0
	wasm-encoder@0.23.0
	wasm-encoder@0.4.1
	wasm-smith@0.4.5
	wasm-streams@0.4.2
	wasmer-inline-c-macro@0.1.6
	wasmer-inline-c@0.1.2
	wasmi@0.38.0
	wasmi_c_api_impl@0.38.0
	wasmi_c_api_macros@0.38.0
	wasmi_collections@0.38.0
	wasmi_core@0.38.0
	wasmi_ir@0.38.0
	wasmparser-nostd@0.100.2
	wasmparser@0.121.2
	wasmparser@0.216.0
	wasmprinter@0.2.80
	wast@216.0.0
	wat@1.216.0
	wcgi-host@0.3.0
	wcgi@0.3.0
	web-sys@0.3.72
	webc@7.0.0-rc.2
	webpki-roots@0.26.6
	weedle2@5.0.0
	weezl@0.1.8
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-registry@0.2.0
	windows-result@0.2.0
	windows-strings@0.1.0
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
	winnow@0.6.20
	xattr@1.3.1
	xxhash-rust@0.8.12
	xz2@0.1.7
	xz@0.1.0
	yansi@1.0.1
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zip@2.2.0
	zopfli@0.8.1
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.13.2

	addr2line@0.24.2
	adler2@2.0.0
	aes@0.8.4
	ahash@0.7.8
	ahash@0.8.11
	aho-corasick@1.1.3
	aliasable@0.1.3
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anes@0.1.6
	anstream@0.6.17
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.9
	any_ascii@0.1.7
	anyhow@1.0.91
	arbitrary@1.3.2
	arrayref@0.3.9
	arrayvec@0.5.2
	arrayvec@0.7.6
	askama@0.12.1
	askama_derive@0.12.5
	askama_escape@0.10.3
	askama_parser@0.2.1
	assert_cmd@1.0.8
	assert_cmd@2.0.16
	async-channel@2.3.1
	async-compression@0.4.17
	async-trait@0.1.83
	async-tungstenite@0.28.0
	atomic-polyfill@1.0.3
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.22.1
	basic-toml@0.1.9
	beef@0.5.2
	bincode@1.3.3
	bindgen@0.70.1
	bitflags@1.3.2
	bitflags@2.6.0
	blake3@1.5.4
	block-buffer@0.10.4
	bstr@0.2.17
	bstr@1.10.0
	build-deps@0.1.4
	bumpalo@3.16.0
	bytecheck@0.6.12
	bytecheck@0.8.0
	bytecheck_derive@0.6.12
	bytecheck_derive@0.8.0
	byteorder@1.5.0
	bytes@1.8.0
	bytesize@1.3.0
	bzip2-sys@0.1.11+1.0.8
	bzip2@0.4.4
	camino@1.1.9
	cargo-platform@0.1.8
	cargo_metadata@0.15.4
	cast@0.3.0
	cbindgen@0.27.0
	cc@1.1.31
	cexpr@0.6.0
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	chrono@0.4.38
	ciborium-io@0.2.2
	ciborium-ll@0.2.2
	ciborium@0.2.2
	cipher@0.4.4
	clang-sys@1.8.1
	clap@4.4.11
	clap_builder@4.4.11
	clap_complete@4.5.3
	clap_derive@4.4.7
	clap_lex@0.6.0
	clap_mangen@0.2.24
	cmake@0.1.51
	colorchoice@1.0.3
	colored@1.9.4
	colored@2.1.0
	comfy-table@7.1.1
	compiletest_rs@0.6.0
	concurrent-queue@2.5.0
	console@0.15.8
	console_error_panic_hook@0.1.7
	constant_time_eq@0.3.1
	convert_case@0.4.0
	cooked-waker@5.0.0
	core-foundation-sys@0.8.7
	core-foundation@0.9.4
	corosensei@0.2.1
	counter@0.5.7
	cpufeatures@0.2.14
	cranelift-bforest@0.110.2
	cranelift-bitset@0.110.3
	cranelift-codegen-meta@0.110.3
	cranelift-codegen-shared@0.110.3
	cranelift-codegen@0.110.2
	cranelift-control@0.110.3
	cranelift-entity@0.110.2
	cranelift-frontend@0.110.2
	cranelift-isle@0.110.2
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	criterion-plot@0.5.0
	criterion@0.5.1
	critical-section@1.2.0
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	crypto-common@0.1.6
	csv-core@0.1.11
	csv@1.3.0
	ctor@0.1.26
	cynic-codegen@3.8.0
	cynic-parser@0.4.5
	cynic-proc-macros@3.8.0
	cynic@3.8.0
	darling@0.14.4
	darling@0.20.10
	darling_core@0.14.4
	darling_core@0.20.10
	darling_macro@0.14.4
	darling_macro@0.20.10
	dashmap@5.5.3
	dashmap@6.1.0
	data-encoding@2.6.0
	deflate64@0.1.9
	deranged@0.3.11
	derive_arbitrary@1.3.2
	derive_builder@0.12.0
	derive_builder_core@0.12.0
	derive_builder_macro@0.12.0
	derive_more-impl@1.0.0
	derive_more@0.99.18
	derive_more@1.0.0
	dialoguer@0.11.0
	diff@0.1.13
	difflib@0.4.0
	digest@0.10.7
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dirs-sys@0.3.7
	dirs@4.0.0
	displaydoc@0.2.5
	distance@0.4.0
	doc-comment@0.3.3
	document-features@0.2.10
	dotenvy@0.15.7
	downcast-rs@1.2.1
	dunce@1.0.5
	dyn-clone@1.0.17
	dynasm@1.2.3
	dynasmrt@1.2.3
	educe@0.5.11
	either@1.13.0
	encode_unicode@0.3.6
	enum-iterator-derive@0.7.0
	enum-iterator@0.7.0
	enum-ordinalize-derive@4.3.1
	enum-ordinalize@4.3.0
	enumset@1.1.5
	enumset_derive@0.10.0
	env_filter@0.1.2
	env_logger@0.11.5
	equivalent@1.0.1
	erased-serde@0.3.31
	errno@0.3.9
	event-listener-strategy@0.5.2
	event-listener@5.3.1
	fallible-iterator@0.3.0
	fastrand@2.1.1
	fern@0.6.2
	field-offset@0.3.6
	filetime@0.2.25
	fixedbitset@0.4.2
	flate2@1.0.34
	float-cmp@0.9.0
	fnv@1.0.7
	foreign-types-shared@0.1.1
	foreign-types@0.3.2
	form_urlencoded@1.2.1
	fs-err@2.11.0
	fs_extra@1.3.0
	fuser@0.14.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-io@0.3.31
	futures-lite@2.3.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-timer@3.0.3
	futures-util@0.3.31
	futures@0.3.31
	generic-array@0.14.7
	getopts@0.2.21
	getrandom@0.2.15
	ghost@0.1.17
	gimli@0.28.1
	gimli@0.31.1
	glob@0.3.1
	globset@0.4.15
	goblin@0.8.2
	graphql-ws-client@0.11.0
	gumdrop@0.8.1
	gumdrop_derive@0.8.1
	half@1.8.3
	half@2.4.1
	handlebars@3.5.5
	harsh@0.2.2
	hash32@0.2.1
	hashbrown@0.11.2
	hashbrown@0.12.3
	hashbrown@0.13.2
	hashbrown@0.14.5
	hashbrown@0.15.0
	heapless@0.7.17
	heck@0.3.3
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hexdump@0.1.2
	hmac@0.12.1
	http-body-util@0.1.2
	http-body@1.0.1
	http-serde@2.1.1
	http@1.1.0
	httparse@1.9.5
	httpdate@1.0.3
	humantime@2.1.0
	hyper-rustls@0.27.3
	hyper-tls@0.6.0
	hyper-tungstenite@0.13.0
	hyper-util@0.1.9
	hyper@1.5.0
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.61
	id-arena@2.2.1
	ident_case@1.0.1
	idna@0.2.3
	idna@0.5.0
	ignore@0.4.23
	indexmap-nostd@0.4.0
	indexmap@1.9.3
	indexmap@2.6.0
	indicatif@0.17.8
	inkwell@0.5.0
	inkwell_internals@0.10.0
	inline-c-macro@0.1.7
	inline-c@0.1.8
	inout@0.1.3
	insta@1.40.0
	instant@0.1.13
	interfaces@0.0.9
	inventory@0.2.3
	ipnet@2.10.1
	is-terminal@0.4.13
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itertools@0.12.1
	itoa@1.0.11
	jobserver@0.1.32
	js-sys@0.3.72
	lalrpop-util@0.20.2
	lazy_static@1.5.0
	leb128@0.2.5
	lexical-sort@0.3.1
	libc@0.2.161
	libfuzzer-sys@0.4.7
	libloading@0.8.5
	libm@0.2.8
	libredox@0.1.3
	libyml@0.0.5
	linked-hash-map@0.5.6
	linked_hash_set@0.1.4
	linux-raw-sys@0.4.14
	litrs@0.4.1
	llvm-sys@180.0.0
	lock_api@0.4.12
	lockfree-object-pool@0.1.6
	log@0.4.22
	logos-codegen@0.14.2
	logos-derive@0.14.2
	logos@0.14.2
	loupe-derive@0.1.3
	loupe@0.1.3
	lz4_flex@0.11.3
	lzma-rs@0.3.0
	lzma-sys@0.1.20
	mac_address@1.1.7
	mach2@0.4.2
	managed@0.8.0
	matchers@0.1.0
	matches@0.1.10
	md5@0.7.0
	memchr@2.7.4
	memmap2@0.5.10
	memmap2@0.6.2
	memoffset@0.7.1
	memoffset@0.9.1
	merge-streams@0.1.2
	mime@0.3.17
	mime_guess@2.0.5
	minicov@0.3.6
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@1.0.2
	miow@0.3.7
	more-asserts@0.2.2
	multi-stash@0.2.0
	munge@0.4.1
	munge_macro@0.4.1
	native-tls@0.2.12
	nix@0.26.4
	nix@0.28.0
	nom@7.1.3
	normalize-line-endings@0.3.0
	normpath@1.1.1
	nu-ansi-term@0.46.0
	num-conv@0.1.0
	num-traits@0.2.19
	num_cpus@1.16.0
	num_enum@0.5.11
	num_enum_derive@0.5.11
	number_prefix@0.4.0
	object@0.30.4
	object@0.32.2
	object@0.36.5
	once_cell@1.20.2
	oorandom@11.1.4
	opener@0.6.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.104
	openssl@0.10.68
	ouroboros@0.18.4
	ouroboros_macro@0.18.4
	overload@0.1.1
	page_size@0.6.0
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	path-clean@1.0.1
	pathdiff@0.2.2
	pbkdf2@0.12.2
	percent-encoding@2.3.1
	pest@2.7.14
	pest_derive@2.7.14
	pest_generator@2.7.14
	pest_meta@2.7.14
	petgraph@0.6.5
	pin-project-internal@1.1.7
	pin-project-lite@0.2.15
	pin-project@1.1.7
	pin-utils@0.1.0
	pkg-config@0.3.31
	plain@0.2.3
	plotters-backend@0.3.7
	plotters-svg@0.3.7
	plotters@0.3.7
	portable-atomic@1.9.0
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	predicates-core@1.0.8
	predicates-tree@1.0.11
	predicates@2.1.5
	predicates@3.1.2
	pretty_assertions@1.4.1
	prettyplease@0.2.25
	proc-macro-crate@1.3.1
	proc-macro-error-attr2@2.0.0
	proc-macro-error-attr@1.0.4
	proc-macro-error2@2.0.1
	proc-macro-error@1.0.4
	proc-macro2-diagnostics@0.10.1
	proc-macro2@1.0.89
	ptr_meta@0.1.4
	ptr_meta@0.3.0
	ptr_meta_derive@0.1.4
	ptr_meta_derive@0.3.0
	pulldown-cmark@0.8.0
	quick-error@2.0.1
	quinn-proto@0.11.8
	quinn-udp@0.5.5
	quinn@0.11.5
	quote@1.0.37
	rancor@0.1.0
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	redox_users@0.4.6
	ref-cast-impl@1.0.23
	ref-cast@1.0.23
	regalloc2@0.9.3
	regex-automata@0.1.10
	regex-automata@0.4.8
	regex-lite@0.1.6
	regex-syntax@0.6.29
	regex-syntax@0.8.5
	regex@1.11.1
	region@3.0.2
	rend@0.5.2
	replace_with@0.1.7
	reqwest@0.12.8
	ring@0.17.8
	rkyv@0.8.8
	rkyv_derive@0.8.8
	rmp-serde@1.3.0
	rmp@0.8.14
	roff@0.2.2
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.0.0
	rustc_version@0.3.3
	rustc_version@0.4.1
	rustfix@0.5.1
	rustix@0.38.37
	rustls-native-certs@0.8.0
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustls@0.22.4
	rustls@0.23.15
	rustversion@1.0.18
	rusty_jsc@0.1.0
	rusty_jsc_macros@0.1.0
	rusty_jsc_sys@0.1.0
	rusty_pool@0.7.0
	ruzstd@0.5.0
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.26
	schemars@0.8.21
	schemars_derive@0.8.21
	scoped-tls@1.0.1
	scopeguard@1.2.0
	scroll@0.12.0
	scroll_derive@0.12.0
	security-framework-sys@2.12.0
	security-framework@2.11.1
	self_cell@1.0.4
	semver-parser@0.10.2
	semver@0.11.0
	semver@1.0.23
	seq-macro@0.3.5
	serde-wasm-bindgen@0.4.5
	serde@1.0.213
	serde_bytes@0.11.15
	serde_cbor@0.11.2
	serde_derive@1.0.213
	serde_derive_internals@0.29.1
	serde_json@1.0.132
	serde_path_to_error@0.1.16
	serde_spanned@0.6.8
	serde_urlencoded@0.7.1
	serde_yml@0.0.12
	serial_test@2.0.0
	serial_test_derive@2.0.0
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shared-buffer@0.1.4
	shell-words@1.1.0
	shlex@1.3.0
	signal-hook-registry@1.4.2
	simd-adler32@0.3.7
	simdutf8@0.1.5
	similar@2.6.0
	siphasher@0.3.11
	slab@0.4.9
	slice-group-by@0.3.1
	smallvec@1.13.2
	smawk@0.3.2
	smoltcp@0.8.2
	socket2@0.5.7
	spin@0.9.8
	stable_deref_trait@1.2.0
	static_assertions@1.1.0
	string-interner@0.17.0
	strsim@0.10.0
	strsim@0.11.1
	strum@0.26.3
	strum_macros@0.26.4
	subtle@2.6.1
	syn@1.0.109
	syn@2.0.85
	sync_wrapper@1.0.1
	tar@0.4.42
	target-lexicon@0.11.2
	target-lexicon@0.12.16
	target-triple@0.1.3
	tempfile@3.13.0
	term@0.7.0
	termcolor@1.4.1
	terminal_size@0.3.0
	termios@0.3.3
	termtree@0.4.1
	test-log-macros@0.2.16
	test-log@0.2.16
	tester@0.9.1
	textwrap@0.16.1
	thiserror-impl@1.0.65
	thiserror@1.0.65
	thread_local@1.1.8
	time-core@0.1.2
	time-macros@0.2.18
	time@0.1.45
	time@0.3.36
	tinytemplate@1.2.1
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tldextract@0.6.0
	tokio-macros@2.4.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.25.0
	tokio-rustls@0.26.0
	tokio-serde@0.9.0
	tokio-socks@0.5.2
	tokio-stream@0.1.16
	tokio-tungstenite@0.21.0
	tokio-tungstenite@0.24.0
	tokio-util@0.7.12
	tokio@1.41.0
	toml@0.5.11
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.19.15
	toml_edit@0.22.22
	tower-http@0.5.2
	tower-layer@0.3.3
	tower-service@0.3.3
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-serde@0.1.3
	tracing-subscriber@0.3.18
	tracing-test-macro@0.2.5
	tracing-test@0.2.5
	tracing-wasm@0.2.1
	tracing@0.1.40
	try-lock@0.2.5
	trybuild@1.0.101
	tungstenite@0.21.0
	tungstenite@0.24.0
	twox-hash@1.6.3
	typenum@1.17.0
	typetag-impl@0.1.8
	typetag@0.1.8
	ucd-trie@0.1.7
	unicase@2.8.0
	unicode-bidi@0.3.17
	unicode-ident@1.0.13
	unicode-normalization@0.1.24
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode-xid@0.2.6
	uniffi@0.27.3
	uniffi_bindgen@0.27.3
	uniffi_build@0.27.3
	uniffi_checksum_derive@0.27.3
	uniffi_core@0.27.3
	uniffi_macros@0.27.3
	uniffi_meta@0.27.3
	uniffi_testing@0.27.3
	uniffi_udl@0.27.3
	unix_mode@0.1.4
	untrusted@0.9.0
	ureq@2.10.1
	url@2.5.2
	urlencoding@2.1.3
	utf-8@0.7.6
	utf8parse@0.2.2
	uuid@1.11.0
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.5
	wai-bindgen-gen-core@0.2.3
	wai-bindgen-gen-rust-wasm@0.2.3
	wai-bindgen-gen-rust@0.2.3
	wai-bindgen-gen-wasmer@0.2.3
	wai-bindgen-rust-impl@0.2.3
	wai-bindgen-rust@0.2.3
	wai-bindgen-wasmer-impl@0.2.3
	wai-parser@0.2.3
	wait-timeout@0.2.0
	waker-fn@1.2.0
	walkdir@2.5.0
	want@0.3.1
	wasi@0.10.0+wasi-snapshot-preview1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.95
	wasm-bindgen-futures@0.4.45
	wasm-bindgen-macro-support@0.2.95
	wasm-bindgen-macro@0.2.95
	wasm-bindgen-shared@0.2.95
	wasm-bindgen-test-macro@0.3.45
	wasm-bindgen-test@0.3.45
	wasm-bindgen@0.2.95
	wasm-coredump-builder@0.1.22
	wasm-coredump-encoder@0.1.22
	wasm-coredump-types@0.1.22
	wasm-encoder@0.216.0
	wasm-encoder@0.23.0
	wasm-encoder@0.4.1
	wasm-smith@0.4.5
	wasm-streams@0.4.2
	wasmer-inline-c-macro@0.1.6
	wasmer-inline-c@0.1.2
	wasmi@0.38.0
	wasmi_c_api_impl@0.38.0
	wasmi_c_api_macros@0.38.0
	wasmi_collections@0.38.0
	wasmi_core@0.38.0
	wasmi_ir@0.38.0
	wasmparser-nostd@0.100.2
	wasmparser@0.121.2
	wasmparser@0.216.0
	wasmprinter@0.2.80
	wast@216.0.0
	wat@1.216.0
	wcgi-host@0.3.0
	wcgi@0.3.0
	web-sys@0.3.72
	webc@7.0.0-rc.2
	webpki-roots@0.26.6
	weedle2@5.0.0
	weezl@0.1.8
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-registry@0.2.0
	windows-result@0.2.0
	windows-strings@0.1.0
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
	winnow@0.6.20
	xattr@1.3.1
	xxhash-rust@0.8.12
	xz2@0.1.7
	xz@0.1.0
	yansi@1.0.1
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zeroize@1.8.1
	zeroize_derive@1.4.2
	zip@2.2.0
	zopfli@0.8.1
	zstd-safe@7.2.1
	zstd-sys@2.0.13+zstd.1.5.6
	zstd@0.13.2
"

inherit cargo

DESCRIPTION="universal web assembly runtime"
HOMEPAGE="https://wasmer.io"
SRC_URI="
	https://github.com/wasmerio/wasmer/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT Apache-2.0 BSD-2 ISC"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

BDEPEND="
	dev-util/cmake
	>=virtual/rust-1.37.0
"

src_compile() {
	#cargo_src_compile --manifest-path lib/cli/Cargo.toml --features llvm,wasmer-artifact-create,static-artifact-create,wasmer-artifact-load,static-artifact-load
	cargo_src_compile --manifest-path lib/cli/Cargo.toml --features "singlepass,cranelift"
}

src_install() {
	#doexe target/*/release/wasmer
	cargo_src_install --path lib/cli
	einstalldocs
}

