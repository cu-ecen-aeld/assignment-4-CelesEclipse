# AESD Assignments External Package Makefile

# Set the package's version and source location
AESD_ASSIGNMENTS_VERSION = 1.0
AESD_ASSIGNMENTS_SITE = $(PROJECT_DIR)/base_external/package/aesd-assignments
AESD_ASSIGNMENTS_SOURCE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-CelesEclipse.git'

# Define the target directory where the executables and scripts will be installed
AESD_ASSIGNMENTS_INSTALL_DIR = /usr/bin

# Install the binaries and scripts to the target directory
define AESD_ASSIGNMENTS_INSTALL_CMDS
    $(INSTALL) -m 0755 $(AESD_ASSIGNMENTS_DIR)/finder.sh $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(AESD_ASSIGNMENTS_DIR)/tester.sh $(TARGET_DIR)/usr/bin/
    $(INSTALL) -m 0755 $(AESD_ASSIGNMENTS_DIR)/writer $(TARGET_DIR)/usr/bin/
endef

# Install any additional configuration files
define AESD_ASSIGNMENTS_INSTALL_CONFIG
    $(INSTALL) -m 0755 $(AESD_ASSIGNMENTS_DIR)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
endef

# Include package in Buildroot
$(eval $(call external-package,aesd_assignments))
