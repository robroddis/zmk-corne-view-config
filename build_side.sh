. ./env_sided.sh
export HOME=/work/home
mkdir -p ${HOME}
rm -rf build
west init -l "config"
west update
west zephyr-export
west build -s zmk/app -b "nice_nano_v2" -- -DZMK_CONFIG="${PWD}/config" -DSHIELD="corne_${shield_side} nice_view_adapter nice_view"
mkdir -p artifacts
cp build/zephyr/zmk.uf2 "artifacts/corne_${shield_side} nice_view_adapter nice_view-nice_nano_v2-zmk.uf2"

