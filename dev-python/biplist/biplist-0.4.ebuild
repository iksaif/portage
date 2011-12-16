# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="2:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[4-5] 3.*"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils

DESCRIPTION="biplist is a library for reading/writing binary plists"
HOMEPAGE="https://github.com/wooster/biplist http://pypi.python.org/pypi/biplist/"
SRC_URI="https://github.com/downloads/wooster/biplist/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

RDEPEND=""
DEPEND="${RDEPEND}
        test? ( dev-python/coverage )
	dev-python/setuptools"
