# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="The small C++ library with graphics / resource related utilities used across the hypr* ecosystem"
HOMEPAGE="https://github.com/hyprwm/hyprgraphics"
SRC_URI="https://github.com/hyprwm/hyprgraphics/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	x11-libs/pixman
	x11-libs/cairo
	gui-libs/hyprutils
	media-libs/libjpeg-turbo
	media-libs/libwebp
	media-libs/libjxl
	sys-apps/file
"
