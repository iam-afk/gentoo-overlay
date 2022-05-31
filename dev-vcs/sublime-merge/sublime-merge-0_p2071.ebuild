# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit desktop wrapper xdg

# get the major version from PV
MY_PV=$(ver_cut 3)
MY_PN=${PN/-/_}

DESCRIPTION="Sublime Merge is a Git client, from the makers of Sublime Text"
HOMEPAGE="https://www.sublimemerge.com"
SRC_URI="
	https://download.sublimetext.com/sublime_merge_build_${MY_PV}_x64.tar.xz"
S="${WORKDIR}/${MY_PN}"

LICENSE="Sublime"
SLOT="0"
KEYWORDS="~amd64"
IUSE="dbus"
RESTRICT="bindist mirror strip"

RDEPEND="
	dev-libs/glib:2
	x11-libs/gtk+:3
	x11-libs/libX11
	dbus? ( sys-apps/dbus )"

QA_PREBUILT="*"

# Sublime bundles the kitchen sink, which includes python and other assorted
# modules. Do not try to unbundle these because you are guaranteed to fail.

src_install() {
	insinto /opt/${MY_PN}
	doins -r Packages Icon # /Icon is used at runtime by the application
	doins changelog.txt sublime_merge.desktop

	# sublime_merge looks for /opt/sublime_merge/sublime_merge
	exeinto /opt/${MY_PN}
	doexe crash_reporter git-credential-sublime ssh-askpass-sublime sublime_merge

	# sublime-merge sets its WM_CLASS based on its argv[0]. A wrapper script is
	# used instead of a symlink to preserve a consistent WM_CLASS regardless of
	# how the application is launched. This causes the WM_CLASS to be
	# "sublime_merge" which matches the .desktop entry.
	make_wrapper subl "/opt/${MY_PN}/sublime_merge --fwdargv0 \"\$0\""
	domenu sublime_merge.desktop

	local size
	for size in 16 32 48 128 256; do
		doicon --size ${size} Icon/${size}x${size}/${PN}.png
	done
}

pkg_postinst() {
	xdg_pkg_postinst
}
