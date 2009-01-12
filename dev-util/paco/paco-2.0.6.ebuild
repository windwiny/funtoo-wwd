# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $


DESCRIPTION="paco"
HOMEPAGE="http://paco.sourceforge.net/"
SRC_URI="http://downloads.sourceforge.net/${PN}/${PN}-${PV}.tar.bz2"
#	http://downloads.sourceforge.net/paco/paco-2.0.6.tar.bz2

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="dev-cpp/gtkmm"

S="${WORKDIR}/${PN}"

src_unpack() {
	unpack ${A}
	einfo "src_unpack: unpack ${A}"
	cd "${S}"
	einfo "src_unpack: cd \"${S}\""
	einfo "src_unpack:  -- pwd is `pwd`"
}

src_compile() {
	cd ${PN}-${PV}
	einfo "src_compile: pwd=`pwd`"
	econf || die "econf"
	emake || die "emake"
}

src_install() {
	einfo "src_install: pwd=`pwd`"
	einfo "src_install: make DESTDIR=${WORKDIR}/${PN}-${PV} install"
	cd "${WORKDIR}/${PN}-${PV}"
	einfo "src_install: pwd=`pwd`"
	make DESTDIR=${D} install ||  die "make DESTDIR="${D} -`pwd`" install"
}

