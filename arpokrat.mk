PRODUCT_NAME := arpokrat_device
PRODUCT_BRAND := Arpokrat
PRODUCT_MANUFACTURER := Arpokrat
PRODUCT_MODEL := Arpokrat Phone


PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=none \
    ro.usb.uvc.enabled=false


PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.gps.indoor.enabled=false \
    ro.vendor.gps.atom.enabled=false \
    ro.vendor.gps.pps.enabled=false \
    ro.bluetooth.a2dp_offload.supported=false \
    persist.bluetooth.a2dp_offload.disabled=true \
    persist.vendor.bluetooth.thread_dispatcher.enabled=false


PRODUCT_PACKAGES += \
    Orbot \
    CalculatorOverlay \
    ClockOverlay \
    ContactsOverlay \
    DialerOverlay \
    FilesOverlay \
    FrameworkOverlay \
    GalleryOverlay \
    LatinIMEOverlay \
    LauncherOverlay \
    MessagingOverlay \
    ProviderOverlay \
    SettingsOverlay \
    SetupWizardOverlay \
    SystemUIOverlay
    

PRODUCT_COPY_FILES += \
    vendor/arpokrat/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

$(call inherit-product-if-exists, vendor/arpokrat/products/arpokrat_$(TARGET_DEVICE).mk)
