#
# Makefile for ns
#

# The original zip file, MUST be specified by each product
local-zip-file     := null.zip

# The output zip file of LEWA rom, the default is porting_lewa.zip if not specified
local-out-zip-file  :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

# All apks from LEWA execept SystemUI and lewa-res.apk
local-lewa-apps     :=

# All apps need to be removed from original ZIP file
local-remove-apps   :=

# Set ro.sys.partner in build.prop for lewa partner
local-lewa-partner  :=

# Set ro.lewa.device in build.prop for lewa partner
local-lewa-device   :=

# The ota assert devices for lewa partner
local-ota-assert-device :=

# All jars need to be patched from orginal ZIP file
local-lewa-jars :=

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
