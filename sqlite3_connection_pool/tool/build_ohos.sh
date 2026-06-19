#!/usr/bin/env bash
set -euo pipefail

: "${OHOS_SDK_NATIVE:?OHOS_SDK_NATIVE must point to the OpenHarmony native SDK directory}"

mkdir -p .cargo out

linker="$(pwd)/.cargo/aarch64-unknown-linux-ohos-clang.sh"
cat > "$linker" <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

: "${OHOS_SDK_NATIVE:?OHOS_SDK_NATIVE must point to the OpenHarmony native SDK directory}"

exec "$OHOS_SDK_NATIVE/llvm/bin/clang" \
  --target=aarch64-linux-ohos \
  --sysroot="$OHOS_SDK_NATIVE/sysroot" \
  "$@"
EOF
chmod +x "$linker"

export CARGO_TARGET_AARCH64_UNKNOWN_LINUX_OHOS_LINKER="$linker"

cargo build --release --target aarch64-unknown-linux-ohos

cp target/aarch64-unknown-linux-ohos/release/libsqlite3_connection_pool.so \
  out/libsqlite3_connection_pool.ohos_aarch64.so
