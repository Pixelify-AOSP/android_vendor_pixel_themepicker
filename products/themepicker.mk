#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq ($(WITH_GMS),true)

# Inherit from the proprietary version
$(call inherit-product, vendor/pixel/themepicker/common/common-vendor.mk)

# Overlay
PRODUCT_PACKAGES += \
	FrameworkOverlayThemePicker \
	PixelLauncherOverlayThemePicker \
    SettingsOverlayThemePicker \
    SystemUIOverlayThemePicker

# Tensorflow
PRODUCT_PACKAGES += \
    libtensorflowlite_jni \
    MagicPortraitSymLink

# Config
PRODUCT_COPY_FILES += \
    vendor/pixel/themepicker/prebuilt/etc/hiddenapi-package-whitelist-themepicker.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-hiddenapi-package-whitelist.xml \
    vendor/pixel/themepicker/prebuilt/etc/preinstalled-packages-product-themepicker.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/google-preinstalled-packages-product-themepicker.xml \
    vendor/pixel/themepicker/prebuilt/etc/sysconfig-themepicker.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/sysconfig-themepicker.xml \
    vendor/pixel/themepicker/prebuilt/etc/privapp-permissions-themepicker-se.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/google-privapp-permissions-themepicker-se.xml

# Abalone (Sterling) / Mantis (Green) live wallpaper media — required under
# /product/wallpaper/{video,image}/ or the emojiwallpaper engine kills itself.
PRODUCT_COPY_FILES += \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/video/sterling.mp4:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/video/sterling.mp4 \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/video/sterling_dark.mp4:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/video/sterling_dark.mp4 \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/video/green.mp4:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/video/green.mp4 \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/video/green_dark.mp4:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/video/green_dark.mp4 \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/front_sterling.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/front_sterling.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/front_sterling_dark.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/front_sterling_dark.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/fallback_sterling.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/fallback_sterling.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/fallback_sterling_dark.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/fallback_sterling_dark.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/front_green.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/front_green.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/front_green_dark.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/front_green_dark.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/fallback_green.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/fallback_green.jpg \
    vendor/pixel/themepicker/common/proprietary/product/wallpaper/image/fallback_green_dark.jpg:$(TARGET_COPY_OUT_PRODUCT)/wallpaper/image/fallback_green_dark.jpg

endif
