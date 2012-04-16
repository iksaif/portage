# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[4-5] 3.*"

inherit distutils

DESCRIPTION="Handling of Mozilla XUL app profiles"
HOMEPAGE="http://github.com/mozautomation/mozmill http://pypi.python.org/pypi/mozprofile"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="|| ( MPL-1.1 GPL-2 LGPL-2.1 )"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

RDEPEND=">=dev-python/manifestdestiny-0.5.4"
DEPEND="${RDEPEND}
	dev-python/setuptools"