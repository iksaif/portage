# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit cmake-utils

DESCRIPTION="Bike sharing application."
HOMEPAGE="http://xf.iksaif.net/dev/lugdulov.html"
SRC_URI="http://xf.iksaif.net/dev/lugdulov/${P}.tar.bz2"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=x11-libs/qt-core-4.6
	>=x11-libs/qt-gui-4.6
	dev-libs/qjson"
RDEPEND="${DEPEND}"

src_install() {
      cmake-utils_src_install

      doicon lugdulov/lugdulov.svg
      make_desktop_entry lugdulov "Lugdulo'V" lugdulov
}
