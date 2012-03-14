# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit cmake-utils

DESCRIPTION="Command line parser for Qt (like getopt)."
HOMEPAGE="http://xf.iksaif.net/dev/qcommandline.html"
SRC_URI="http://xf.iksaif.net/dev/${PN}/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=x11-libs/qt-core-4.6"
RDEPEND="${DEPEND}"
