set +x
set +e

export shield_side=right

docker exec -w /work -u ${UID}  -v $PWD:/work zmkfirmware/zmk-build-arm:stable ./build_side.sh
