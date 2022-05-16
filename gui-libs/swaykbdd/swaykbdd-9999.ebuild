# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Per-window keyboard layouts for Sway (KBDD replacement)"
HOMEPAGE="https://github.com/artemsen/swaykbdd"
EGIT_REPO_URI="https://github.com/artemsen/swaykbdd.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-libs/json-c:0="
RDEPEND="
	gui-wm/sway
	${DEPEND}
"
