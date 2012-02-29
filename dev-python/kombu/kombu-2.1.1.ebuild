# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"
PYTHON_DEPEND="*:2.5"
RESTRICT_PYTHON_ABIS="2.4"
SUPPORT_PYTHON_ABIS="1"
DISTUTILS_SRC_TEST="nosetests"

inherit distutils eutils

DESCRIPTION="AMQP Messaging Framework for Python"
HOMEPAGE="https://github.com/ask/kombu"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-python/anyjson-0.3.1
	>=dev-python/amqplib-1.0"
DEPEND="${RDEPEND}
	test? ( dev-python/nose-cover3 dev-python/mock )
	dev-python/setuptools"

src_prepare() {
	if use test; then
		epatch "${FILESDIR}/${P}-add-assertIsInstance-with-unittest.patch"
	fi
}

src_test() {
        testing() {
		nosetests --py3where build-${PYTHON_ABI}/lib/kombu/tests
        }
        python_execute_function testing
}
