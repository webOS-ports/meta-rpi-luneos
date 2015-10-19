CXXFLAGS +=" \
    -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
    -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux \
    "

# Do not get out of memory
LDFLAGS += "-Wl,--no-keep-memory"

