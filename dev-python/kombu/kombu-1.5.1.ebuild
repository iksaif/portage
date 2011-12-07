# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"
PYTHON_DEPEND="2 3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="AMQP Messaging Framework for Python"
HOMEPAGE="https://github.com/ask/kombu"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-python/anyjson-0.3.1
	>=dev-python/amqplib-1.0"

DEPEND="${RDEPEND}
	dev-python/setuptools"


