# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
PYTHON_DEPEND="2"
RESTRICT_PYTHON_ABIS="3.*"
SUPPORT_PYTHON_ABIS="1"

inherit distutils eutils

DESCRIPTION="Celery is an open source asynchronous task queue/job queue based on distributed message passing."
HOMEPAGE="http://celeryproject.org/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="sql"

RDEPEND=">=dev-python/kombu-1.4.3
	sql? ( dev-python/sqlalchemy )
	>=dev-python/python-dateutil-1.5
	>=dev-python/anyjson-0.3.1
	dev-python/pyparsing"

DEPEND="${RDEPEND}
	dev-python/setuptools"

RESTRICT="test"

src_install () {

	distutils_src_install --install-scripts="/usr/bin"

	# Main celeryd init.d and conf.d
	newinitd "${FILESDIR}/celery.initd" celery
	newconfd "${FILESDIR}/celery.confd" celery
}

