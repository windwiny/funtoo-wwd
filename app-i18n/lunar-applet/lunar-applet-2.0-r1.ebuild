# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Chinese Lunar Calendar Gnome applet"
HOMEPAGE="http://packages.ubuntu.com/intrepid/lunar-applet"
SRC_URI="http://archive.ubuntu.com/ubuntu/pool/universe/l/${PN}/${PN}_${PV}.orig.tar.gz
http://archive.ubuntu.com/ubuntu/pool/universe/l/${PN}/${PN}_${PVR/r/}.diff.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""
DEPEND="app-i18n/liblunar"

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
	einfo "AAA is  ${PN}/${PN}_${PVR}.diff.gz ${PN}/${PN}_${PV}.orig.tar.gz ${S}"
	unpack ${A}
	cd "${S}"
	cd ${S}-${PV}
	epatch ../${PN}_${PVR/r/}.diff
}

src_compile() {
	cd "${S}"
	cd ${S}-${PV}
	econf || die "econf"
	emake || die "emake"
}

src_install() {
	cd "${S}"
	cd ${S}-${PV}
	emake DESTDIR="${D}" install || die "emake DESTDIR=\"${D}\" install"
}
