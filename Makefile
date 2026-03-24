# Nom du binaire (à adapter si besoin)
BIN_NAME = simeis

# Dossier de sortie
TARGET_DIR = target

# =========================
# BUILD
# =========================

build:
	cargo build

# =========================
# RELEASE
# =========================

release:
	cargo build --release
	strip $(TARGET_DIR)/release/$(BIN_NAME)

# =========================
# TESTS
# =========================

test:
	cargo test

# =========================
# CHECK (rapide)
# =========================

check:
	cargo check

# =========================
# FORMAT
# =========================

fmt:
	cargo fmt --all

fmt-check:
	cargo fmt --all -- --check

# =========================
# LINT (clippy)
# =========================

clippy:
	cargo clippy -- -D warnings

# =========================
# DOC (Typst)
# =========================

doc:
	typst compile docs/manual.typ docs/manual.pdf

# =========================
# CLEAN
# =========================

clean:
	cargo clean
	rm -f docs/manual.pdf