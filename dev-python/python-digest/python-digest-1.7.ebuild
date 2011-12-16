# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="2:2.6"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="2.[4-5] 3.*"

inherit distutils

DESCRIPTION="A Python library to aid in implementing HTTP Digest Authentication"
HOMEPAGE="http://pypi.python.org/pypi/python-digest https://bitbucket.org/akoha/python-digest"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
DEPEND="${RDEPEND}
	dev-python/setuptools"

PYTHON_MODNAME="python_digest"

src_test() {
        testing() {
                "$(PYTHON)" ${PYTHON_MODNAME}/tests.py
        }
        python_execute_function testing
}
