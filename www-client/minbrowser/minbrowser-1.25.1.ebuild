# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit unpacker xdg

DESCRIPTION="A smarter web browser"
HOMEPAGE="https://minbrowser.org/"
SRC_URI="https://github.com/minbrowser/min/releases/download/v${PV}/min-${PV}-amd64.deb"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S=${WORKDIR}

src_unpack() {
	:
}

src_install() {
	dodir /
	cd "${ED}" || die
	unpacker

	mv usr/share/doc/min usr/share/doc/${PF} || die

	gzip -d usr/share/doc/${PF}/changelog.gz || die
}
