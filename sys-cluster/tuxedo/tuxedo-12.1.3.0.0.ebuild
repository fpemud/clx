# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit eutils

DESCRIPTION="Oracle Tuxedo is #1 application server"
HOMEPAGE="http://www.oracle.com/technetwork/middleware/tuxedo/index.html"
SRC_URI="tuxedo121300_64_Linux_01_x86.zip"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64"
IUSE="server"

DEPEND=""
RDEPEND="${DEPEND}"

QA_PREBUILT="usr/lib*/tuxedo/lib*/lib*"

pkg_nofetch() {
	eerror "Please go to"
	eerror "${HOMEPAGE}"
	eerror "download the ${SRC_URI}."
}

S="${WORKDIR}"
SERVER_DATA_DIR=Disk1/stage/Components/tuxedoServer/${PV}/1/DataFiles
CLIENT_DATA_DIR=Disk1/stage/Components/tuxedoClientCore/${PV}/1/DataFiles

src_unpack() {
	unpack "${A}"
	unzip -q "${WORKDIR}"/${CLIENT_DATA_DIR}/filegroup1.1.1.jar -d "${WORKDIR}"/${CLIENT_DATA_DIR}
	use server && unzip -q "${WORKDIR}"/${SERVER_DATA_DIR}/filegroup1.1.1.jar -d "${WORKDIR}"/${SERVER_DATA_DIR}
}

src_configure() { :; }
src_compile() { :; }


src_install() {
	local tuxdir=usr/$(get_libdir)/${PN}
	local ldpath=/${tuxdir}/$(get_libdir)

	into "/${tuxdir}"
	dolib.so ${CLIENT_DATA_DIR}/lib{buft,engine,fml,fml32,giconv,gpnet,jms,msgq1,ociicus,omg,orbutl,plugin,qm,qs,sec,secssl,ticuuc,ticudata,tux,txml,usort,utrace,wsc}$(get_libname)*
	dosym libtxml$(get_libname 25.0) "/${tuxdir}"/$(get_libdir)/libtxml$(get_libname 25) 
	dosym libticuuc$(get_libname 36.0) "/${tuxdir}"/$(get_libdir)/libticuuc$(get_libname 36) 
	dosym libticudata$(get_libname 36.0) "/${tuxdir}"/$(get_libdir)/libticudata$(get_libname 36) 
	
	local f
	for f in buildclient mkfldhdr32 ; do
		dobin ${CLIENT_DATA_DIR}/${f}
		dosym "/${tuxdir}"/bin/${f} /usr/bin/${f}
	done

	insinto "/${tuxdir}"/include
	doins ${CLIENT_DATA_DIR}/{atmi.h,fml.h,fml32.h,tmenv.h,tpadm.h,userlog.h,xa.h}
	
	insinto "/${tuxdir}"/locale/C
	for f in CMDFML CMDTUX ; do
		newins ${CLIENT_DATA_DIR}/${f}_CAT2 ${f}_CAT
		newins ${CLIENT_DATA_DIR}/${f}.text2 ${f}.text
	done


	if use server ; then
		for f in tmadmin  tmboot  tmconfig  tmipcrm tmloadcf tmshutdown tmunloadcf buildserver dmadmin dmloadcf dmunloadcf qmadmin BBL DBBL DMADM GWADM GWTDOMAIN TMQUEUE WSH WSL  ; do
			dobin ${SERVER_DATA_DIR}/${f}
			dosym "/${tuxdir}"/bin/${f} /usr/bin/${f}
		done
			dolib.so ${SERVER_DATA_DIR}/lib{tmib,gw,gwt}$(get_libname)*
		insinto "/${tuxdir}"/include
		doins ${SERVER_DATA_DIR}/sqlca.h

		insinto "/${tuxdir}"/locale/C
		for f in TMADMIN TPFW TUXMQ WSNAT  ; do
			newins ${SERVER_DATA_DIR}/${f}_CAT2 ${f}_CAT
			newins ${SERVER_DATA_DIR}/${f}.text2 ${f}.text
		done
	fi

	dosym $(get_libdir) "/${tuxdir}"/lib

	{
		echo "# ${EPREFIX}/etc/env.d/50${PN}"
		echo "# Do not edit this file, but 99${PN} instead"
		echo
		echo "TUXDIR=${EPREFIX}/${tuxdir}"
		echo "LDPATH=${ldpath}"
	} > "${T}"/50${PN}

	doenvd "${T}"/50${PN}
}

pkg_preinst() {
	if [[ -r ${EROOT}/etc/env.d/99${PN} ]]; then
		cp "${EROOT}/etc/env.d/99${PN}" "${ED}/etc/env.d/" || die
	else
	{
		echo "# ${EPREFIX}/etc/env.d/99${PN}"
			echo "# Configure system-wide defaults for your Tuxedo here"
			echo
			echo "#$(grep '^TUXDIR=' "${ED}/etc/env.d/50${PN}")"
	} > "${ED}/etc/env.d/99${PN}"
	fi
}

