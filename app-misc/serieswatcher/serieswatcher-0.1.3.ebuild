# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit cmake-utils

DESCRIPTION="Track your favorites TV shows."
HOMEPAGE="http://xf.iksaif.net/dev/serieswatcher.html"
SRC_URI="http://xf.iksaif.net/dev/serieswatcher/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=x11-libs/qt-core-4.6
	>=x11-libs/qt-gui-4.6
	>=dev-libs/qttvdb-0.3.0"
RDEPEND="${DEPEND}"

