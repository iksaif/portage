# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="*:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[4-5] 3.*"

inherit distutils

DESCRIPTION="File for interface to transform introspected system information to a format pallatable to Mozilla"
HOMEPAGE="https://wiki.mozilla.org/Auto-tools http://pypi.python.org/pypi/mozinfo"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE=""
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools"

PYTHON_MODNAME="mozinfo"
