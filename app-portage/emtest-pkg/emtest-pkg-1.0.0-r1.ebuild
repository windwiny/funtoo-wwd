# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils

DESCRIPTION="Gentoo portage Test ."
HOMEPAGE="wwwwwwww.tonnacco.com.org"
SRC_URI="http://xxx.yyy.zzz/emtest-pkg-1.0.0.tar.gz
http://xxx.yyy.zzz/emtest-pkg_1.0.0-1.diff.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86"
IUSE=""

DEPEND=""
RDEPEND=""

#S="${WORKDIR}/${PN}"

emsg() {
	einfo "emsg: \${P} = \"${P}\""
	einfo "emsg: \${PN} = \"${PN}\""
	einfo "emsg: \${PV} = \"${PV}\""
	einfo "emsg: \${PR} = \"${PR}\""
	einfo "emsg: \${PVR} = \"${PVR}\""
	einfo "emsg: \${PF} = \"${PF}\""
	einfo "emsg: \${WORKDIR} = \"${WORKDIR}\""
	einfo "emsg: \${FILESDIR} = \"${FILESDIR}\""
	einfo "emsg: \${DISTDIR} = \"${DISTDIR}\""
	einfo "emsg: \${S} = \"${S}\""
	einfo "emsg: \${T} = \"${T}\""
	einfo "emsg: \${D} = \"${D}\""
	einfo "emsg: \${SLOT} = \"${SLOT}\""
	einfo "emsg: \${LICENSE} = \"${LICENSE}\""
	einfo "emsg: \${KEYWORDS} = \"${KEYWORDS}\""
	einfo "emsg: \${DESCRIPTION} = \"${DESCRIPTION}\""
	einfo "emsg: \${SRC_URI} = \"${SRC_URI}\""
	einfo "emsg: \${HOMEPAGE} = \"${HOMEPAGE}\""
	einfo "emsg: \${IUSE} = \"${IUSE}\""
	einfo "emsg: \${DEPEND} = \"${DEPEND}\""
	einfo "emsg: \${RDEPEND} = \"${RDEPEND}\""

	einfo "emsg: \${A} = \"${A}\""
}

src_unpack() {
	emsg
	einfo "src_unpack() default pwd `pwd`"
	unpack ${A}
	cd ${S}
	einfo "src_unpack() pwd `pwd`"
	epatch ../${PN}_${PVR/r/}.diff
}

src_compile() {
	cd ${S}
	einfo "src_compile() default pwd `pwd`"
}

src_install() {
	cd ${S}
	einfo "src_install() default pwd `pwd`"
	dobin em_t1
	dobin em_t2
}

# * einfo: ${P} = liblunar-1.0.0
# * einfo: ${PN} = liblunar
# * einfo: ${PV} = 1.0.0
# * einfo: ${PR} = r1
# * einfo: ${PVR} = 1.0.0-r1
# * einfo: ${PF} = liblunar-1.0.0-r1
# * einfo: ${WORKDIR} = /var/tmp/portage/app-i18n/liblunar-1.0.0-r1/work
# * einfo: ${FILESDIR} = /home/portageX/app-i18n/liblunar/files
# * einfo: ${DISTDIR} = /var/tmp/portage/app-i18n/liblunar-1.0.0-r1/distdir
# * einfo: ${S} = /var/tmp/portage/app-i18n/liblunar-1.0.0-r1/work/liblunar
# * einfo: ${T} = /var/tmp/portage/app-i18n/liblunar-1.0.0-r1/temp
# * einfo: ${D} = /var/tmp/portage/app-i18n/liblunar-1.0.0-r1/image/
# * einfo: ${SLOT} = 0
# * einfo: ${LICENSE} = GPL-2
# * einfo: ${KEYWORDS} = ~x86 ~amd64
# * einfo: ${DESCRIPTION} = Chinese Lunar Calendar Gnome applet lib
# * einfo: ${SRC_URI} = http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblunar/liblunar_1.0.0.orig.tar.gz
# * http://archive.ubuntu.com/ubuntu/pool/universe/libl/liblunar/liblunar_1.0.0-1ubuntu2.diff.gz
# * einfo: ${HOMEPAGE} = http://packages.ubuntu.com/intrepid/liblunar-1-0
# * einfo: ${IUSE} =  
# * einfo: ${DEPEND} =  
# * einfo: ${RDEPEND} =  
#
#
# * einfo: ${P} = lunar-applet-2.0
# * einfo: ${PN} = lunar-applet
# * einfo: ${PV} = 2.0
# * einfo: ${PR} = r1
# * einfo: ${PVR} = 2.0-r1
# * einfo: ${PF} = lunar-applet-2.0-r1
# * einfo: ${WORKDIR} = /var/tmp/portage/app-i18n/lunar-applet-2.0-r1/work
# * einfo: ${FILESDIR} = /home/portageX/app-i18n/lunar-applet/files
# * einfo: ${DISTDIR} = /var/tmp/portage/app-i18n/lunar-applet-2.0-r1/distdir
# * einfo: ${S} = /var/tmp/portage/app-i18n/lunar-applet-2.0-r1/work/lunar-applet
# * einfo: ${T} = /var/tmp/portage/app-i18n/lunar-applet-2.0-r1/temp
# * einfo: ${D} = /var/tmp/portage/app-i18n/lunar-applet-2.0-r1/image/
# * einfo: ${SLOT} = 0
# * einfo: ${LICENSE} = GPL-2
# * einfo: ${KEYWORDS} = ~x86 ~amd64
# * einfo: ${DESCRIPTION} = Chinese Lunar Calendar Gnome applet
# * einfo: ${SRC_URI} = http://archive.ubuntu.com/ubuntu/pool/universe/l/lunar-applet/lunar-applet_2.0.orig.tar.gz
# * http://archive.ubuntu.com/ubuntu/pool/universe/l/lunar-applet/lunar-applet_2.0-1.diff.gz
# * einfo: ${HOMEPAGE} = http://packages.ubuntu.com/intrepid/lunar-applet
# * einfo: ${IUSE} =  
# * einfo: ${DEPEND} = app-i18n/liblunar 
# * einfo: ${RDEPEND} = app-i18n/liblunar 
# * AAA is  lunar-applet/lunar-applet_2.0-r1.diff.gz lunar-applet/lunar-applet_2.0.orig.tar.gz /var/tmp/portage/app-i18n/lunar-applet-2.0-r1/work/lunar-applet

# vim:se nowrap:
