# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils qt4-r2

IUSE=""

MY_P=${PN//synkron/Synkron}-${PV}-src
S=${WORKDIR}/${MY_P}

DESCRIPTION="Open Source folder synchroniser"
HOMEPAGE="http://synkron.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="x11-libs/qt-core:4
        x11-libs/qt-gui:4"
RDEPEND=""

src_unpack() {
        unpack ${A}
        cd "${S}"
	sed -i 's/qm/ts/g' i18n.qrc
}

src_install() {
        dobin synkron || die "Couldn't install Synkron"
        doicon images/Synkron128.png

        make_desktop_entry synkron Synkron Synkron128 Utility
}
