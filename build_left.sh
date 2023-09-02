set +x
set +e

export shield_side=left

docker run -w /work -u ${UID}  -v $PWD:/work zmkfirmware/zmk-build-arm:stable ./build_side.sh
