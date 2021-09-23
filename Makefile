build: rustwasmfilter.wasm

rustwasmfilter.wasm:
	cargo build --target wasm32-unknown-unknown --release
	cp target/wasm32-unknown-unknown/release/rustwasmfilter.wasm ./envoy/rustwasmfilter.wasm

.PHONY: clean
clean:
	rm ./envoy/rustwasmfilter.wasm || true