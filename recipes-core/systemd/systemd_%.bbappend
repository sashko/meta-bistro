FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://audio.slice \
            file://connectivity.slice \
            file://core-services.slice \
            file://dlt.slice \
            file://media.slice \
            file://phone.slice \
            file://speech.slice \
            file://swdl.slice \
            file://ui-apps.slice \
            file://ui.slice \
            file://vehicle-functions.slice \
            file://video.slice \
"

do_install_append() {
    install -m 0644 ${WORKDIR}/audio.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/connectivity.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/core-services.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/dlt.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/media.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/phone.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/speech.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/swdl.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/ui-apps.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/ui.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/vehicle-functions.slice ${D}${systemd_unitdir}/system/
    install -m 0644 ${WORKDIR}/video.slice ${D}${systemd_unitdir}/system/
}
