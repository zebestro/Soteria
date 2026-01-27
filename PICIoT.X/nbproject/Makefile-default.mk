#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/cli/cli.c mcc_generated_files/cloud/crypto_client/crypto_client.c mcc_generated_files/cloud/wifi_service.c mcc_generated_files/cloud/cloud_service.c mcc_generated_files/cloud/aws_cloud_service.c mcc_generated_files/cloud/mqtt_service.c mcc_generated_files/credentials_storage/credentials_storage.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/uart.c mcc_generated_files/drivers/timeout.c mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mcc_generated_files/mqtt/mqtt_core/mqtt_core.c mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c mcc_generated_files/mqtt/mqtt_winc_adapter.c mcc_generated_files/winc/driver/winc_spi.c mcc_generated_files/winc/driver/winc_hif.c mcc_generated_files/winc/driver/winc_asic.c mcc_generated_files/winc/driver/winc_adapter.c mcc_generated_files/winc/driver/winc_drv.c mcc_generated_files/winc/m2m/m2m_ota.c mcc_generated_files/winc/m2m/m2m_crypto.c mcc_generated_files/winc/m2m/m2m_fwinfo.c mcc_generated_files/winc/m2m/m2m_ssl.c mcc_generated_files/winc/m2m/m2m_wifi.c mcc_generated_files/winc/m2m/m2m_periph.c mcc_generated_files/winc/socket/socket.c mcc_generated_files/winc/spi_flash/flexible_flash.c mcc_generated_files/winc/spi_flash/spi_flash.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/application_manager.c mcc_generated_files/sensors_handling.c mcc_generated_files/delay.c mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/tmr1.c mcc_generated_files/uart1.c mcc_generated_files/system.c mcc_generated_files/led.c mcc_generated_files/debug_print.c mcc_generated_files/i2c2_driver.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/spi1_driver.c mcc_generated_files/time_service.c mcc_generated_files/CryptoAuth_init.c main.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/cli/cli.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/application_manager.o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/led.o ${OBJECTDIR}/mcc_generated_files/debug_print.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/time_service.o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o ${OBJECTDIR}/main.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/cli/cli.o.d ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/application_manager.o.d ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d ${OBJECTDIR}/mcc_generated_files/delay.o.d ${OBJECTDIR}/mcc_generated_files/clock.o.d ${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/system.o.d ${OBJECTDIR}/mcc_generated_files/led.o.d ${OBJECTDIR}/mcc_generated_files/debug_print.o.d ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/traps.o.d ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d ${OBJECTDIR}/mcc_generated_files/time_service.o.d ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d ${OBJECTDIR}/main.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/cli/cli.o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/application_manager.o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o ${OBJECTDIR}/mcc_generated_files/delay.o ${OBJECTDIR}/mcc_generated_files/clock.o ${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/system.o ${OBJECTDIR}/mcc_generated_files/led.o ${OBJECTDIR}/mcc_generated_files/debug_print.o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/traps.o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o ${OBJECTDIR}/mcc_generated_files/time_service.o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o ${OBJECTDIR}/main.o

# Source Files
SOURCEFILES=mcc_generated_files/cli/cli.c mcc_generated_files/cloud/crypto_client/crypto_client.c mcc_generated_files/cloud/wifi_service.c mcc_generated_files/cloud/cloud_service.c mcc_generated_files/cloud/aws_cloud_service.c mcc_generated_files/cloud/mqtt_service.c mcc_generated_files/credentials_storage/credentials_storage.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c mcc_generated_files/drivers/i2c_simple_master.c mcc_generated_files/drivers/i2c_types.c mcc_generated_files/drivers/spi_master.c mcc_generated_files/drivers/i2c_master.c mcc_generated_files/drivers/uart.c mcc_generated_files/drivers/timeout.c mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c mcc_generated_files/mqtt/mqtt_core/mqtt_core.c mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c mcc_generated_files/mqtt/mqtt_winc_adapter.c mcc_generated_files/winc/driver/winc_spi.c mcc_generated_files/winc/driver/winc_hif.c mcc_generated_files/winc/driver/winc_asic.c mcc_generated_files/winc/driver/winc_adapter.c mcc_generated_files/winc/driver/winc_drv.c mcc_generated_files/winc/m2m/m2m_ota.c mcc_generated_files/winc/m2m/m2m_crypto.c mcc_generated_files/winc/m2m/m2m_fwinfo.c mcc_generated_files/winc/m2m/m2m_ssl.c mcc_generated_files/winc/m2m/m2m_wifi.c mcc_generated_files/winc/m2m/m2m_periph.c mcc_generated_files/winc/socket/socket.c mcc_generated_files/winc/spi_flash/flexible_flash.c mcc_generated_files/winc/spi_flash/spi_flash.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/application_manager.c mcc_generated_files/sensors_handling.c mcc_generated_files/delay.c mcc_generated_files/clock.c mcc_generated_files/tmr2.c mcc_generated_files/tmr1.c mcc_generated_files/uart1.c mcc_generated_files/system.c mcc_generated_files/led.c mcc_generated_files/debug_print.c mcc_generated_files/i2c2_driver.c mcc_generated_files/interrupt_manager.c mcc_generated_files/traps.c mcc_generated_files/spi1_driver.c mcc_generated_files/time_service.c mcc_generated_files/CryptoAuth_init.c main.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ128GA705
MP_LINKER_FILE_OPTION=,--script=p24FJ128GA705.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/cli/cli.o: mcc_generated_files/cli/cli.c  .generated_files/flags/default/b2cda278ea9ed1d560f597bce85c109b0ea79507 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cli" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cli/cli.c  -o ${OBJECTDIR}/mcc_generated_files/cli/cli.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cli/cli.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/c2526899b728ea728596b98440897bd5bde0b421 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/7e8219f650f8208087004cfecb347b3f4cf1bd85 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o: mcc_generated_files/cloud/cloud_service.c  .generated_files/flags/default/e06ca862214d5ea94e3f41e0fe9ab8d5e87be164 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o: mcc_generated_files/cloud/aws_cloud_service.c  .generated_files/flags/default/de0980cb76180e5c06ac87b13f2f5627c600b262 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/aws_cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o: mcc_generated_files/cloud/mqtt_service.c  .generated_files/flags/default/4759256878314087f43104e1de668d9feed2ca5b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/e06df0a424596131c277866b91997cc65e0ed647 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/7f18b4bc55f32262ff87a5c6874d66bf2bf24903 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/6a318233b2e649a56277e0fc4232401c7e06eb58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/163bc5af1e4ab89fa537e487ee71765aed143bdb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/a7794dc994b123d9bb9269b90bd1cde2b027494e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/433226fd97dc132001f96ed7123bc923a74ba3d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/b985d0c85ac93998e16c2d85eec81c3034aaa857 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/7fc967944b7f1700fc7738ab21b58138b5d5a570 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/a6a335c48bfbdd6420545a46fd0260edf8dae8c0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/44c238e6313bbc002855f690cc11cab3d3611d09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/5e4059e214bba2efc6d63f11ebe6a3b07b9b0885 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/c13e86bafda22ba7ca3368592a65717a0cd260b0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/f68c824bc3f3131d44c9847a5ab5fe33565eea74 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/2afe61ebf2eb9ec6e2580227217111a3bc9be098 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/885354a18313ec9cc64b52c50c9a86b46ba53d68 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/cb3488422d82b5b2369c04ae7edf031866b66789 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/43f21befa3e5968ff08464bb4d75806e3894173c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/1b5a52b3f236bfa17bf7a7bb54eb272747573fc1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/27920aa9479b1f96f9a1b5d9942b48cd02e79793 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/1985a2a1b3de8e1a8a4bbf2ed085914591d55660 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/9c21096663c9288652da4c319140d2ff98b302ab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/b169c3a2661ede5e12aabbb28c9e814e15a839aa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/9df1c6bbbcc2e0be981395fc13059a2442b9530b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/a34cd2839e9a24a7f3adf0d60d26cf83cef8cc65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/aa47a3c80e2cf7da94b3b9e3f589eca3706a81ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/97aed5adf96934f5ae03d85b20b78e6a0dd14eeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/872dfa46abb40ab5b24dd46333f92ac191fa6bd1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/ee8482dd26e0190ddec317eaff12857b4e9e1440 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/27fe29a23f7590e978c60e4e76fcecd72e9960da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/6c711f3aec4cf9a6f778680489369022ed0d5b00 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/4a5f6bb3b1f9f211f5cfe19e1cf4b78f86a40303 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/aba6aaea505ba4d007e406d3c6226ceb60ba9dc7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/6795444783c63349ca7650812a7fe87c9c7dc03b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/ef56fd2e6b4028e3e852a788474e705d164bf9a7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/e1cf28de35a3da9a8fcf5825afbc2c5ba12b27bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/c70c1643187412cee2021660713888e214633b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/356aff397040e86b7555a8daa6273ebe4239ab4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/7b4eb8a8368a494634dfa39f1833e146445cbb10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/f3405a5ec325cee65348b40140e64f21abd1b431 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/78036655a4a94b40de8f54322a7c823e76c9db09 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/f25a83b1ef1be9435f13e7a43983c697d7392b15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/3f5e6e2320375cd4a2686d97b471bb14f50a5f67 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/529c2b3125bb7a7cda5f84795cf49c7105d114d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/5441b53c0148cc4225e9432ae89282d3dc425a4f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/de348eb566ff03a8eb835e965cc5bea071ad4ce2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/96ed100dea8d47a260dc59c08f01a973d3a12cd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/8a960946dc810ca39dcd284b1741f40aec54d370 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/b9dfece131a60300937f28d60b283019f292eb7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/ac64024a234febf806d1c7e171fc521539fd61a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/460f729a5d7b6b30493a8a84e216246ac35f3ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/f177da2a671edd3bfffe9217379ed402af28243f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/c224fa761965fc558701f69e667c1e5afca82806 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/bfe28c181be246cdb82425f6992460e35c858cbb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/79e3a2ec61d35deb760495d7cc39106db59aae96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/488374d230063275c0135e854de96fe7d9a55da3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/cfe3e1a676b2703b2a6fc30dd8a1724b9e45ef55 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/22b8c8cd0d2502088eb36844d2b56b7b58cb3a01 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/a4e112d687d1b1ae51a5593f84660b6a625c7cfd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/5ee46e24b4b1e638b6fc44aef7c8cb00ea5522dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o: mcc_generated_files/mqtt/mqtt_winc_adapter.c  .generated_files/flags/default/49769ebca2302a4478028804d5d27f57b02fd8c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/27f3f6a44e743ee7cb8ab0d3d15051b1ef99f2d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/70b29c7f6c6950c1cc89267fe6ac02311468c1a1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/82237a0ca6bb0848007e838a44526b92af41137a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/c15787781707ce185fe7ca5ca22e8bba68f0a69e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/d4c1a4f1ee1f3c48c866a1408990d5997e5d1616 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/73a261aee47521f6809afe69db5af1f48ddb988 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/47f5efb207bef2683d06db4194729f396dea26a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/b4251f39820c4b02dc5396a4fe5e7251953b74dc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/2453063cf1e2b7f6c6cc7caf1325acea5e0b4351 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/cb0bbb0abcf3b29466344c0cd5b5ff44fb6eff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/3a8c2a3d25056085e442a0f83653f9bc452dac6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/a4be421635ab742e66cc367031825c46ad38e297 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/2044a150272ff5f98168c9e1c2ac1cdea43bd813 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/281bb683de9cfe4b0eaacb5e5bb7a2a824de1176 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/b521cfc474da93e8b25ecc089c44507468e84837 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/eb6f73f29918db2fc1733c447a14dad4eac13cbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/e7506e22f0ccea8b912776d01b25549189b5f768 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/application_manager.o: mcc_generated_files/application_manager.c  .generated_files/flags/default/82cddfeaa79d282d421eb1340131dc053ffddfb4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/application_manager.c  -o ${OBJECTDIR}/mcc_generated_files/application_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/application_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/1a0d1c22a2841ffeeece9be05f88bac0d03d573c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/b447b4baf90a356a5ccccb2a60111a194a42c4de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/10f07a5d6b496c335417c5d691a28c6f77921a24 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/f9746ec8decae1eae34abf4114cb2fac86a067e4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/13dd38e3b9a2dbe68eedadbc86c431d2572f257b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/f9c18efee176e673fd20ab574b25265ccf33c85c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/c62bb918889d4c2053b327c271a93d5483aed092 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/7c29b72edc1772b734841cd8c096f2fdc15b33cb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/debug_print.o: mcc_generated_files/debug_print.c  .generated_files/flags/default/1c5facf54aa5cb6fe651b4a888f1bd2648a65e6e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/debug_print.c  -o ${OBJECTDIR}/mcc_generated_files/debug_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/debug_print.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/1de73030bdebee18172bd47bc6b4137fcbba6c32 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/484bb566e4f1ec846d5863c1e51ddb269ae8111e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/7d2fdd29d7b0f1fcb530534483f228d4600fe4ea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/4b5f609266462679d2ba77256895f56f345dc167 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/time_service.o: mcc_generated_files/time_service.c  .generated_files/flags/default/eab64d486e18e9154e2a36e33675289e365ebb8b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/time_service.c  -o ${OBJECTDIR}/mcc_generated_files/time_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/time_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/59357a89ba4f17210ed3b2a7b85543431c4fc070 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/622a4668f40a2345d176e9e0ca97a17eb10ab405 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/cli/cli.o: mcc_generated_files/cli/cli.c  .generated_files/flags/default/d2152b792e2b621a2ad57f73a29229ab413d118f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cli" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cli/cli.c  -o ${OBJECTDIR}/mcc_generated_files/cli/cli.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cli/cli.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/6cca42dda5181b4f8ddb301765cfc6f3f2edeb8c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/776f44831a90b26b69752dd6e43e7f87d3911f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o: mcc_generated_files/cloud/cloud_service.c  .generated_files/flags/default/a74ca6e38c40535fb20189b9f1ed26c2b34ec92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o: mcc_generated_files/cloud/aws_cloud_service.c  .generated_files/flags/default/23b441b0ea286fad71e5a665ef99fbc5a7cf3c95 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/aws_cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o: mcc_generated_files/cloud/mqtt_service.c  .generated_files/flags/default/3ca50bf33da0843a80455d7dabaf13ba2f2ac083 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/c0d5106e6467acc9ca2b8fc65c9d5145f91da2fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/ff1e04fb9332cd05af0024f953ea5978e428382a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/2fc15c385a847c3d8cd28fda85a103246f7cdbeb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/b9daf5f29ddc8cf29e0df0a1e4128473ed72011d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/2ebc51067a6bccc1813338c6135fc315d023f792 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/ce552ebb0b846cc38b70cb3b497a129db7a3c001 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/c4bd456ea50920f1e3f350344c8c5bdad1d8ea38 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/4dfacf01e72f11a4cdf3e05f80d6b0c8d733c0f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/59c9db85d7ee8de9bfdf2991515d86a8a11da672 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/b893d32e67bacd9913de391073c9b6e4bbdb5441 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/e227592bce38ada0cd8428a548fc63cf67d13066 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/89a508e1fddc05fbc276c71d30ff83ee0d63a3e8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/9a2116788f68ec332862a91b87686c0189ae29fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/d00513cd2c06f7077c37d5e18133e591fa55decf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/a054c16ccc9ec656723e1bcc15333bd90ef30312 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/896b2b6b8c4e0278e444001890eddd37e1fcb020 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/1a4e90410730e7f921301c95cfcb2a10283e4484 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/9c8d4a9112697e8721ce436ef8a9c8b5fe68186c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/4b492e44fcc94b68f02ec0045de38856541b900a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/45989ed76ea7cca99a996da4092b89bb182ef30c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/2dd87af864c71c6ecae4ff3f427767b587de55b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/d9e6676aef80d7d20d676992e700647bee906efd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/2ac08b83643c26e6ab835bb680ecd04c89340d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/8013865eda58e18c729c3a8794615aa8942d2b64 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/5b59ab4129cdfaa9701f3397ed967a8aa47b11e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/ce6474c2bb83f47aa11dd424a995df36c70fa22c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/1ca54b4811a7e494078e0173a9850fae3c99b2b3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/61dc43426e26f06f4650272d8c98aa730e2f767a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/d5d56b0cad69a81d8a19d64e08314693b5d24c06 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/ac561b7205f610920a3c5a24781d2788d2c08c2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/25befa19adc1c55cab4721ceac8a94f2f25ed917 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/314a1db70a2dd50892654610b80ea4923cbcffb9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/505cdbdf19ba223ce71504346138dfd121a22ef0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/f4c8a266ed2691f4f21bb14060b16feed11fdd21 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/93c3ccbce7aaf409ce3d8f793b904b590eb5f69b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/397daea066a38a261edefcddec22c26d132d0032 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/2b9f564d1f3c86451f1a082f078cf1a6eb753a45 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/31b52add328f2e5eedc8a9ef3542b89eb55c1ea1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/80cf33104f79d72986c8dd99eebd7850aa9efcb3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/409d854743dbdb15ef7924f53fbca253b75880e7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/c1e0ac4f938579847d0e08df984820b38afad0e0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/f671234f910530e7d26bc4a5da6bfa633ff072cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/2cee4590bb3f0f2af9bf89970cb15ba453c9424d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/ba5c103e23d50134310dfcd0f45f5088d733253e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/da52769e1c58108aa8894c3281d2e09e79d736c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/dc0d8e688ff47aedd281b127120dcaa5ba854bd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/8b8c653a61dc52332d6d905546fc8c6ea4d8d794 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/72c76352c11a898bf714bd949729a54200b6ea96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/8aea3e3300d4ccef3753c303da1d556c2c42122e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/ff6e67ba015e99acbcba0cae440b2460ebd16f2b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/79015c760a5bb25bfd42efc45a78cf3b4a61942f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/2903741dba57c5fedafc84d0965e2d41359cb67b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/64f7e49c85c20ea0d423b0aaba4a21428cc3b30b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/4b352a720f48ece79c5a4b7dfe8784eb35915275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/35e71ba5bdbdffc120bcbbcdbaf0e2378f0c3c58 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/966fdf4c75d51088fddade97a88a419d5a3cafb5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/2be284cd201494c6e470ee2483a500c5dd522427 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/55e987f88e43395f800d1032ca791fde0a205f65 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/a5aef293cc9b72d2d82c8f8f643017baebc35f6c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o: mcc_generated_files/mqtt/mqtt_winc_adapter.c  .generated_files/flags/default/8cc0481d9877c21a13b3875a137a773a85073113 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/fd66ddd755ac0d3806fc065ca32c787b4f4fd287 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/ee36ee691c01c616f1c59eaf109d3faa2026235f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/70d6c63883b8748ba043e55681a750779f30076b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/4a7dbd38412e0647b079d2819af1ff90bf8169bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/dc08b787d177edc4a5167d4ddadb9e80247ecd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/140c7874603d39e96f6aca88f2f0adb01e6af23a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/3779e78eb0a6a26f751e2c9c32580b84968d0fac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/309ef678fa55c1ebd1017531557cf9694b2824f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/1bb722fad7965f797d6c2c4801eeead083c8f78b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/79eac5119823b2381223f1d8424611f3206c6bc4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/1ba3b2a868955fd01c8d784d3cb7e5bc981497a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/66408d7f8b90235bdd00894eda9680002928aeea .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/9fd9a31d916636838a0cf21aaea7f10d939c1dab .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/1d730effb999ad0c2c2a2380f65e86fa90bda0f5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/928e802e49a2134ac4e23f47b196a56c08b01fd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/8b3741d8736a38c47f3d67a2731e3b8273db97b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/ce52a3cd988d67e639bba3d570f9a79ab214010a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/application_manager.o: mcc_generated_files/application_manager.c  .generated_files/flags/default/512c55401d1b4163990ba5021dabd16581e7fc15 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/application_manager.c  -o ${OBJECTDIR}/mcc_generated_files/application_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/application_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/f47026637d0d0ca5b754db97fa149c31a7063e0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/88694b50bd707e4cccbf082a4a43e726728ffa66 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/27168562f9e3f4e7e9f40010875362ff764e43de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/34f832ae6bd5947df32bdaf67afa3ce3dc686ff2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/1110675ba2374bbfd2fc3f87aa6eabb104a14fdf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/ea7bcb1be0d3f0abdba35d0f0f2d2902b75de85c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/d308de0bb827d196bea6f7249d5286386413b6fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/e681b70615a32fc3f8bbb6aa15cdf340c3976f52 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/debug_print.o: mcc_generated_files/debug_print.c  .generated_files/flags/default/376e35a1cac78a899928626c5fbcbf13267233f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/debug_print.c  -o ${OBJECTDIR}/mcc_generated_files/debug_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/debug_print.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/fd860f416e514c670118d0afa032c9c31dafa5d8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/5d8aaf6d2c6322dec6c3ffa35d96fbe2af662b82 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/bdb029f0b4a88350e8e6bc285d79f958c21b78cc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/216da5bed809c3de1bd362f2090d85757c680e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/time_service.o: mcc_generated_files/time_service.c  .generated_files/flags/default/2c1d3d04e52703a70792e4c46987c78bfb3dfd48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/time_service.c  -o ${OBJECTDIR}/mcc_generated_files/time_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/time_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/de48448355282af89be27ce0b6a625f0a12f083c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/f8e964321611a2104bc857947a33650fb1b5b4c6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary"     -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
