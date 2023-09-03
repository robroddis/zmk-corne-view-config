set +x
set +e

export shield_side=right

docker run -it -w /work -u ${UID} -e shield_side -v ${PWD}:/work zmkfirmware/zmk-build-arm:stable sh -x /work/build_side.sh
