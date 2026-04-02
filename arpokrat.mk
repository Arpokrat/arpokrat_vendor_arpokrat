PRODUCT_NAME := arpokrat_device
PRODUCT_BRAND := Arpokrat
PRODUCT_MANUFACTURER := Arpokrat
PRODUCT_MODEL := Arpokrat Phone


PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sys.usb.defaultconfig=none \
    persist.sys.usb.config=none


PRODUCT_PACKAGES += \
    Orbot \
    FrameworkOverlay \
    CalculatorOverlay \
    ClockOverlay \
    ContactsOverlay \
    MessagingOverlay \
    PdfViewerOverlay \
    SettingsOverlay \
    SystemUIOverlay \
    SetupWizardOverlay \
    ProviderOverlay \
    LauncherOverlay \
    DialerOverlay \
    FilesOverlay \
    GalleryOverlay \
    LatinIMEOverlay

PRODUCT_COPY_FILES += \
    vendor/arpokrat/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    vendor/arpokrat/hardware_overrides/empty_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml