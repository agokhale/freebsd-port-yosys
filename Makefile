# $FreeBSD$

PORTNAME=	yosys
PORTVERSION=	1.0
CATEGORIES=	cad
MASTER_SITES=	https://github.com/cliffordwolf/yosys/

MAINTAINER=	ash_ports@aeria.net
COMMENT=	Verilog synthesizer RTL framework

LICENSE=	ISCL

USES=		tar:xz gmake
BUILD_DEPENDS= 	gmake:devel/gmake  bison:devel/bison  flex:textproc/flex hg:devel/mercurial dot:graphics/graphviz python3:lang/python3 tclsh:lang/tcl-wrapper
LIB_DEPENDS=    libffi.so:devel/libffi

USE_GITHUB= 	yes
GH_ACCOUNT=	agokhale
GH_TAGNAME=	v0.3

BINS=		yosys yosys-abc       yosys-config    yosys-filterlib yosys-smtbmc

.include <bsd.port.mk>
