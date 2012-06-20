ifneq ($(filter primou,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
