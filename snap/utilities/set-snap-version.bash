#!/usr/bin/env bash
# Program to set snap's version, used by the `version-script` keyword
# 林博仁(Buo-ren, Lin) <Buo.Ren.Lin@gmail.com> © 2018

set \
	-o errexit \
	-o errtrace \
	-o nounset \
	-o pipefail

init(){
	local \
		upstream_version \
		ntfs_3g_version \
		packaging_revision

	upstream_version="$(
		git \
			-C parts/wimlib/src \
			describe \
			--abbrev=3 \
			--always \
			--dirty=-d \
			--tags \
		| sed s/^v//
	)"

	ntfs_3g_version="$(
		git \
			-C parts/ntfs-3g/src \
			describe \
			--abbrev=3 \
			--always \
			--dirty=-d \
			--tags
	)"
			
	packaging_revision="$(
		git \
			describe \
			--abbrev=2 \
			--always \
			--match nothing \
			--dirty=-d
	)"

	printf \
		-- \
		'%s' \
		"${upstream_version}+n${ntfs_3g_version}"

	exit 0
}

init "${@}"
