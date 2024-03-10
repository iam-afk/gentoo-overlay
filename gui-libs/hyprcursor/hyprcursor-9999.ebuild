# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Hyprland cursor format, library and utilities"
HOMEPAGE="https://github.com/hyprwm/hyprcursor"

if [[ "${PV}" = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/hyprwm/${PN^}.git"
else
	SRC_URI="https://github.com/hyprwm/${PN^}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="BSD"
SLOT="0"

DEPEND="
	>=dev-libs/hyprlang-0.4.0
	dev-libs/libzip
	x11-libs/cairo
	gnome-base/librsvg:2
"
RDEPEND="${DEPEND}"
BDEPEND=""

src_configure() {
	local mycmakeargs=(
		-DCMAKE_BUILD_TYPE:STRING=Release
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install
}
