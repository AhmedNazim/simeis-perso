BIN_NAME = simeis-server

build:
	cargo build

release:
	cargo build --release -p simeis-server
	strip target/release/$(BIN_NAME)

test:
	cargo test

check:
	cargo check

fmt:
	cargo fmt --all

fmt-check:
	cargo fmt --all -- --check

clippy:
	cargo clippy -- -D warnings

doc:
	typst compile docs/manual.typ docs/manual.pdf

clean:
	cargo clean
	rm -f docs/manual.pdf