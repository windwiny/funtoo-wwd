# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Chinese Lunar Calendar Gnome applet lib"
HOMEPAGE="http://packages.ubuntu.com/intrepid/liblunar-1-0"
SRC_URI="http://archive.ubuntu.com/ubuntu/pool/universe/libl/${PN}/${PN}_${PV}.orig.tar.gz
http://archive.ubuntu.com/ubuntu/pool/universe/libl/${PN}/${PN}_${PVR/r/}ubuntu2.diff.gz"
#http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblunar/liblunar_1.0.0.orig.tar.gz
#http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblunar/liblunar_1.0.0-1ubuntu2.diff.gz

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

S="${WORKDIR}/${PN}"

emsg() {
	einfo "einfo: \${P} = ${P}"
	einfo "einfo: \${PN} = ${PN}"
	einfo "einfo: \${PV} = ${PV}"
	einfo "einfo: \${PR} = ${PR}"
	einfo "einfo: \${PVR} = ${PVR}"
	einfo "einfo: \${PF} = ${PF}"
	einfo "einfo: \${WORKDIR} = ${WORKDIR}"
	einfo "einfo: \${FILESDIR} = ${FILESDIR}"
	einfo "einfo: \${DISTDIR} = ${DISTDIR}"
	einfo "einfo: \${S} = ${S}"
	einfo "einfo: \${T} = ${T}"
	einfo "einfo: \${D} = ${D}"
	einfo "einfo: \${SLOT} = ${SLOT}"
	einfo "einfo: \${SLOT} = ${SLOT}"
	einfo "einfo: \${LICENSE} = ${LICENSE}"
	einfo "einfo: \${KEYWORDS} = ${KEYWORDS}"
	einfo "einfo: \${DESCRIPTION} = ${DESCRIPTION}"
	einfo "einfo: \${SRC_URI} = ${SRC_URI}"
	einfo "einfo: \${HOMEPAGE} = ${HOMEPAGE}"
	einfo "einfo: \${IUSE} = ${IUSE}"
	einfo "einfo: \${DEPEND} = ${DEPEND}"
	einfo "einfo: \${RDEPEND} = ${RDEPEND}"
}


src_unpack() {
	emsg
	unpack ${A}
	cd ${S}-${PV}
	epatch ../${PN}_${PVR/r/}ubuntu2.diff
}

src_compile() {
	cd ${S}-${PV}
	econf || die "econf"
	emake || die "emake"
}

src_install() {
	cd ${S}-${PV}
	emake DESTDIR="${D}" install || die "emake DESTDIR=\"${D}\" install"
}
