.if !target(__<avr.dep.mk>__)
__<avr.dep.mk>__:

.PHONY: depend ${DEPENDFILE} cleandepend

DEPENDFILE=	${.OBJDIR}/.depend

depend: ${DEPENDFILE}

${DEPENDFILE}: ${SRCS} ${.MAKE.MAKEFILES}
	echo >${.TARGET}
.for s in ${SRCS:M*.c}
	${CC} ${CFLAGS} -MM -MQ ${s:R}.o ${${s}:P} >>${.TARGET}
.endfor
.for s in ${SRCS:M*.cpp}
	${CXX} ${CXXFLAGS} -MM -MQ ${s:R}.o ${${s}:P} >>${.TARGET}
.endfor
.for s in ${SRCS:M*.ino}
	${CXX} ${CXXFLAGS} -MM -MQ ${s:R}.o -x c++ ${${s}:P} >>${.TARGET}
.endfor

cleandepend:
	rm -f ${DEPENDFILE}

.endif
