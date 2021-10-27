# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit mercurial meson

DESCRIPTION="An obs-studio plugin that allows to screen capture on wlroots based compositors"
HOMEPAGE="https://hg.sr.ht/~scoopta/wlrobs"
SRC_URI=""

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

EHG_REPO_URI="https://hg.sr.ht/~scoopta/wlrobs"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	# local emesonargs=(
	# 	$(meson_use qt5)
	# 	$(meson_feature threads)
	# 	$(meson_use bindist official_branding)
	# )
	meson_src_configure
}
