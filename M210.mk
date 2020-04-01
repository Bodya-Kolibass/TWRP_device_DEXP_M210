LOCAL_PATH := device/DEXP/M210

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/kernel:kernel

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := M210
