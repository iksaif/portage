# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit cmake-utils

DESCRIPTION="A library to access thetvdb.com XML API in Qt."
HOMEPAGE="http://xf.iksaif.net/dev/qttvdb.html"
SRC_URI="http://xf.iksaif.net/dev/qttvdb/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=x11-libs/qt-core-4.6"
RDEPEND="${DEPEND}"
