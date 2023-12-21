#!/usr/bin/env bash

n=1

do_tests()
{
    dir=$1
    test="test"
	chmod +rwx "${dir}${test}${n}.cub";
    echo "${dir}:"
    echo ""
	while [ -e "${dir}${test}${n}.cub" ]; do
       echo ${n}
        ./cub3D "${dir}${test}${n}.cub"
		n=$((n+1))
	done
    echo ""
    echo ""
    n=1
}

do_tests "invalid_maps/texture_tests/";
do_tests "invalid_maps/color_tests/";
do_tests "invalid_maps/map_tests/";
exit;