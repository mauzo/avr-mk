.if !target(__<avr.mk>__)
__<avr.mk>__:

AVR_MK_DIR:=    ${.PARSEDIR}

.MAKEFLAGS:     -m${AVR_MK_DIR}/mk

TARGET?=	avr
.include "avr.obj.init.mk"

.PHONY: all

.MAIN: all

.include "avr.cpu.mk"

.endif
