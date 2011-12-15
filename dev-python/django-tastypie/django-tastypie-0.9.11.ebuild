# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


EAPI=4
PYTHON_DEPEND="2:2.6"
SUPPORT_PYTHON_ABIS=1
RESTRICT_PYTHON_ABIS="2.[4-5] 3.*"
inherit distutils

DESCRIPTION="A flexible and capable API layer for django"
HOMEPAGE="https://github.com/toastdriven/django-tastypie"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
KEYWORDS="~amd64"
IUSE="doc yaml xml"

LICENSE="BSD"
SLOT="0"
PYTHON_MODNAME="tastypie"

RDEPEND="yaml? ( dev-python/pyyaml )
	xml? ( dev-python/lxml )
	>=dev-python/mimeparse-0.1.3
	dev-python/python-dateutil"
DEPEND="${DEPEND}
        >=dev-python/django-1.2.5
	dev-python/setuptools"

src_install() {
	distutils_src_install
	if use doc; then
		rm -r docs/_build/html/_sources/ || die
		dohtml -A txt -r docs/_build/html/*
	fi
}
