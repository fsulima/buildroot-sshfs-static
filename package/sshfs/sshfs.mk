################################################################################
#
# sshfs
#
################################################################################


SSHFS_VERSION = ccb6821019c19600110af6750e0d2395a9401617
SSHFS_SITE = https://github.com/libfuse/sshfs.git
SSHFS_SITE_METHOD = git

SSHFS_LICENSE = GPL-2.0
SSHFS_LICENSE_FILES = COPYING
SSHFS_DEPENDENCIES = \
	libglib2 libfuse3 openssh \
	$(TARGET_NLS_DEPENDENCIES) \
	$(if $(BR2_ENABLE_LOCALE),,libiconv)

$(eval $(meson-package))
