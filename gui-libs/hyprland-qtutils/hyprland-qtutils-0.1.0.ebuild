# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="This repo houses some qt/qml utilities that might be used by various hypr* apps."
HOMEPAGE="https://github.com/hyprwm/hyprland-qtutils"
SRC_URI="https://github.com/hyprwm/hyprland-qtutils/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-qt/qtbase:6
	dev-qt/qtdeclarative:6
	gui-libs/hyprutils
"
