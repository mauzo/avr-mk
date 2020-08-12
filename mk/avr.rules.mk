.if !target(__<avr.rules.mk>__)
__<avr.rules.mk>__:

.SUFFIXES: .c .cpp .o .i .ii .s

.c.o:
	${CC} ${CFLAGS} -c -o ${.TARGET} ${.IMPSRC}

.cpp.o:
	${CXX} ${CXXFLAGS} -c -o ${.TARGET} ${.IMPSRC}

.c.i:
	${CC} ${CFLAGS} -E ${.IMPSRC} >${.CURDIR}/${.TARGET}

.cpp.ii:
	${CXX} ${CXXFLAGS} -E ${.IMPSRC} >${.CURDIR}/${.TARGET}

.c.s:
	${CC} ${CFLAGS} -S ${.IMPSRC} -o ${.CURDIR}/${.TARGET}

.cpp.s:
	${CXX} ${CXXFLAGS} -S ${.IMPSRC} -o ${.CURDIR}/${.TARGET}

.endif
