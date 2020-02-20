ARCH ?= amd64

all:

install:
	mkdir -p ${DESTDIR}/usr/bin/
	mkdir -p ${DESTDIR}/usr/lib/
	mkdir -p ${DESTDIR}/usr/share/mime/application/
	mkdir -p ${DESTDIR}/usr/share/icons/
	mkdir -p ${DESTDIR}/usr/share/applications/
	install -m755 ${ARCH}/cajviewer ${DESTDIR}/usr/bin/cajviewer
	install -m644 ${ARCH}/libreaderex_x64.so ${DESTDIR}/usr/lib/libreaderex_x64.so
	install -m644 cnki-caj.xml ${DESTDIR}/usr/share/mime/application/cnki-caj.xml
	install -m644 cajviewer.png ${DESTDIR}/usr/share/icons/cajviewer.png
	install -m644 cajviewer.desktop ${DESTDIR}/usr/share/applications/cajviewer.desktop
	mkdir -p ${DESTDIR}/opt/cajviewer/
	chmod 777 ${DESTDIR}/opt/cajviewer
	cp -r Resource ${DESTDIR}/opt/cajviewer/

clean:
	rm -f ${DESTDIR}/usr/bin/cajviewer
	rm -f ${DESTDIR}/usr/lib/libreaderex_x64.so
	rm -f ${DESTDIR}/usr/share/mime/application/cnki-caj.xml
	rm -f ${DESTDIR}/usr/share/icons/cajviewer.png
	rm -f ${DESTDIR}/usr/share/applications/cajviewer.desktop
	rm -rf ${DESTDIR}/opt/cajviewer/
