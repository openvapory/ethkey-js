# Remove previous build to avoid name conflicts
rm -rf target/wasm32-unknown-emscripten/*

# Build using nightly rustc + emscripten
rustup run nightly cargo build --release --target=wasm32-unknown-emscripten

# Copy final WASM file over
cp ./target/wasm32-unknown-emscripten/release/deps/tetsy_vapkey_wasm-*.wasm ./vapkey.wasm

# Create a Base64-encoded JS version of the wasm file for easy inclusion in Webpack
node base64ify

# rm -f ./vapkey.wasm ./vapkey.opt.wasm ./vapkey.wasm.js
