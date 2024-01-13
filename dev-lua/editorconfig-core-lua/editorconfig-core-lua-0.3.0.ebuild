# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
LUA_COMPAT=( lua5-{2..4} )
inherit cmake lua-single

DESCRIPTION="EditorConfig Core bindings for Lua"
HOMEPAGE="https://github.com/editorconfig/editorconfig-core-lua"
SRC_URI="https://github.com/editorconfig/editorconfig-core-lua/archive/refs/tags/v$PV.tar.gz -> ${PN}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="amd64"

RDEPEND=">=dev-lang/lua-5.2
	app-text/editorconfig-core-c
"
BDEPEND="${RDEPEND}"
DEPEND="${RDEPEND}"

src_configure() {
	cmake_src_configure
}
