# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi dev

EAPI="3"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

MY_PN="ManifestDestiny"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Universal manifests for Mozilla test harnesses"
HOMEPAGE="https://wiki.mozilla.org/Auto-tools/Projects/ManifestDestiny http://pypi.python.org/pypi/ManifestDestiny"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE="|| ( MPL-1.1 GPL-2 LGPL-2.1 )"
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND="${DEPEND}
	dev-python/setuptools"

S="${WORKDIR}/${MY_P}"
PYTHON_MODNAME="manifestparser"

