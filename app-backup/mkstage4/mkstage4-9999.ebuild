# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit git-r3

DESCRIPTION="Bash Utility for Creating Stage 4 Tarballs"
HOMEPAGE="https://github.com/Sneethe/mkstage4"
EGIT_REPO_URI="https://github.com/Sneethe/mkstage4.git"

LICENSE="GPL-3"
SLOT="0"

RDEPEND="
	app-shells/bash
	sys-apps/pv
	app-arch/tar
	app-arch/zstd
"

src_install() {
	newbin cpstage4.sh cpstage4
	newbin exstage4.sh exstage4
	newbin mkstage4.sh mkstage4
	einstalldocs
}

src_test() {
	bats -r tests/* || die
}
