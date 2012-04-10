# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
PYTHON_COMPAT="python2_5 python2_6 python2_7"

inherit python-distutils-ng

DESCRIPTION="This is django application that try to eliminate annoying things in Django framework."
HOMEPAGE="http://bitbucket.org/offline/django-annoying/wiki/Home"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/setuptools"
RDEPEND="dev-python/django"
