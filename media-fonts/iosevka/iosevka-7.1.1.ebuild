# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="Slender typeface for code, from code"
HOMEPAGE="https://be5invis.github.io/Iosevka/"
SRC_URI="https://github.com/be5invis/${PN}/releases/download/v${PVR}/ttf-${PN}-${PVR}.zip
https://github.com/be5invis/${PN}/releases/download/v${PVR}/ttf-${PN}-fixed-${PVR}.zip
https://github.com/be5invis/${PN}/releases/download/v${PVR}/ttf-${PN}-term-${PVR}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"

DEPEND="app-arch/unzip"

S=${WORKDIR}
FONT_S="${S}"
FONT_SUFFIX="ttf"