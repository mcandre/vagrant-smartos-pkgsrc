#!/bin/sh

BOOTSTRAP_TAR="bootstrap-2017Q4-tools.tar.gz"
BOOTSTRAP_SHA="840bcdff718bdf1f7d3ac10017af83a23d25f4c3"

# Download the bootstrap kit to the current directory.  Note that we currently
# pass "-k" to skip SSL certificate checks as the GZ doesn't install them.
curl -kO https://pkgsrc.joyent.com/packages/SmartOS/bootstrap/${BOOTSTRAP_TAR}

# Verify the SHA1 checksum.
[ "${BOOTSTRAP_SHA}" = "$(/bin/digest -a sha1 ${BOOTSTRAP_TAR})" ] || echo "ERROR: checksum failure"

tar -zxpf ${BOOTSTRAP_TAR} -C /

# Register pkgsrc with bash (login) shell
# svcadm disable -s manray-persist &&
    print "export PATH=\"\$PATH:/opt/tools/sbin:/opt/tools/bin\"\nexport MANPATH=\$MANPATH:/opt/tools/man\n" >>/opt/home/vagrant/.profile
    # svcadm enable -s manray-persist
