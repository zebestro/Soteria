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
${OBJECTDIR}/mcc_generated_files/cli/cli.o: mcc_generated_files/cli/cli.c  .generated_files/flags/default/e3fa640292b52a2df4f6ad2d4412f0189c120b10 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cli" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cli/cli.c  -o ${OBJECTDIR}/mcc_generated_files/cli/cli.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cli/cli.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/9528792b178d055bacacb462ac2f5ee36e7c4119 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/d029c53375f91746fa80e611231303c65b2cecf9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o: mcc_generated_files/cloud/cloud_service.c  .generated_files/flags/default/a09a8dd3b9ac95c7a71f6f047ce52c28efd09063 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o: mcc_generated_files/cloud/aws_cloud_service.c  .generated_files/flags/default/7f080dab5198319179d508a87dc7e0f204490dfe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/aws_cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o: mcc_generated_files/cloud/mqtt_service.c  .generated_files/flags/default/c0ec1e2b0bf8bfd6ed712aa71a339b6a59f38d3e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/52602bc2e8957b34fb53679431dc28d0590f9a0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/305d2238567123b027f5a7756b18ca3981f9143b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/1fa4278af01996b1af799087d1aca7d8f0ea52f3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/b94e6434a06294191e1873db739684feac040202 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/ba003afec3c5c7c8b7ee41ea84223082248473f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/9b418385dfab27f0bb2c979e7ae60c5268aa66f8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/2c085aab4d656ee175ae6fd25c62ee0013338b9e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/ea33a2b2206589b8f16b57fc37f620c03b340122 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/25d9f2cbb82408ec4768491f4fc7cf4bff9820dd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/996160d55fcca1936d0511aa4b5a32cffae34b0d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/feff4bd9c384e82c58b43fbf3f97bf90ec68382c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/147ece6d00df2aca4f3c425c0392d6ca1c41c827 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/16dfb7f7a026defbee2cd7c673934c411bc71c14 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/d0f4bcad11318b4012d3d099107e7e20965ea737 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/582e3fb13c4df846cd756a7f30b749182feb93c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/78d41789eb3ad92a24d2b3aa58da2b69d1f5aa33 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/2cf6f0686ea1855b2fa9cfd61f1b2c5dc52303ae .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/e368797a23af7bfd2b4af9195395e2090735a0f2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/4ec76ec098f723a820e0d2acdf88960cd89fcab0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/5586fa9b40b19c0309a3092a1f7e83b8379a260b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/dceb0c456f372dfa5b41d9e966aa7af66673a643 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/871bc6183bea687fd0d6b6806c374982edfd437f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/3c223e182bb8ce4015942defe0708347139067cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/5f032e9fbdb3ac64d2e7a5570e43065d8a840d1c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/e219fce37fb703021e7948460842f8192c28886c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/c508dfc8c7f23e97fa6645275afb8b0be12d750d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/800dc158140e4beb0700813d326371df8f6643bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/562373de4f00219369d2345653dccab030537e22 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/3ebea968335afdb367728df690e136868f604e75 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/a711a9e33bbc53faec2180da3038a2302ee51816 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/9450c367b2c8dd25f55dc077135b432e45651bbe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/edc4db49b275afc4e609712517fce30a6dd4cbe8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/a9e635063efefd27af68674e88a954ccdfbcda4b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/cc43004bf8253d011daba9c4cd818595d8e829ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/7417effbbf7399e0cf0c308495036b64c7f99294 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/5b0fe69afa4dfb6b5ddbba71306c40faa871a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/50aabbaee27cf7457b75744a0f9d5bca4d2ec3cd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/522e96725f4b66ae9ff750fd89b10e58f0cc211a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/25cf634123072bdc7294edf26cea10795bd04b40 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/e9695839d552153dcc9190983be0b6513bd86e5c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/de46407cbcac9f345e2b8549455afacb30b88fe9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/1c29f3c6da3280937971ca08ffe83d5a09fb21c9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/b07b8872219ceb695a87d353321e5897aa347483 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/6bd5d86edd3c12fca09baea56c55d93e1218d96 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/969d8e102bf11d9c961a754acd8822d5050eabc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/cd60c8af82dc5246810ba54991ecd706302c5d57 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/fd000a1156c37e65e7306cafb5f7aa1bef38d8e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/3fcda227108cb1e13f12812cbf48ad89ed81984 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/6bdea31072908dae18601c3469f2fb2d0ef1ec9d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/f10a0615cf44adde472508fde525ee626b3faea4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/5223baa90dba107b1aa7fc3a867895ac55c935a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/e551805445e4e32ebc345e0a7c8ae21af2dc022e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/a6fb311e0ff5f283afd9a0d377923ab7d1ae5776 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/6a0d63764d6374f80377c75a3fb96947fe03844d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/e70c4deff89550c48f4a5dcea3147f4ebc2a7f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/7c9b7874eb7b8aabbbd91089a6f613aeb8c56016 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/2f1022fe1572c40ddc15eeb58c7bad3cc9105497 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/d8de9f35178cf0c15fbd3187c834a1877cfc288d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/ac7d32fb1524eea7c34da45a4f18dc3212bb9658 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o: mcc_generated_files/mqtt/mqtt_winc_adapter.c  .generated_files/flags/default/549594eebaa4fa4ee81dc5a04299bbe2a38a836c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/fc83437c443ba726fd5f292d2e22e420726bf60c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/7a4b2b91df8a92937d738cfa65bd119f116767f0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/fb1e445872bd2ddcaf27b09aa62255b8605c80ce .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/553a92ce1f9c8c6f8db4a9689fafc49b2e4b29c8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/c399f86e6916ca5ab72596722451cffd5a9fe5d2 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/36db3caf3d8f25127eb6719160837dad61c95527 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/2d065471839845adfb9d8a2769a7c4b97c67af81 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/4f5a11cb95a626c2b236edcc9b968f959f3588df .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/1762638b6471f09e3e6e9e2df9ec494c1473172d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/d1ef0997bf1eb55e5106af0771ab5e4bcb9b494 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/4fe89445be86bc2b2c1e41d204cc8e38ec7aa438 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/34c08baf94aa1e81bfd39df6cb24c81ee5c8b4ca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/8ed12add3d7479bf796890a9553cca95d299658d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/39aa0be4fe5b9acc5bac384c96572ae03ef79b1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/50ee69ddc35357930b460fd8fd6b389b4ca75f54 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/44d320c03948612ccd69e2517461802a9ad08db5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/1517f32f06720965b69712a38c1b0d51a7e88012 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/application_manager.o: mcc_generated_files/application_manager.c  .generated_files/flags/default/6d14eb8a5e74f0c2f89456a40c7d5088d2c11947 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/application_manager.c  -o ${OBJECTDIR}/mcc_generated_files/application_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/application_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/b9e0ebb2c6a084e7459840e6416828b6fab899d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/b98f88f5f7c0ee6478dfbb65809170bbfeba7904 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/ded81dfd212bccc1096cbc7e9a3188122fc80b46 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/1490ee6e6418065b04d133132b316cb2babc31b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/5d79b55b2fb9b5c7d20b15f0f96bb2e008106232 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/9d9a7706644498b9bc29dd2158751b974d6f9e7d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/492b2bf58af09c9d818684b6456c270ece519411 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/668b2590fdcf6bed4ef7777db01dd203d17206fb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/debug_print.o: mcc_generated_files/debug_print.c  .generated_files/flags/default/27d2272e8d2d346c491a5d66040c2b0c6d616a6f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/debug_print.c  -o ${OBJECTDIR}/mcc_generated_files/debug_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/debug_print.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/7acc216492365600fc2d3186fe273fff1f396c3f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/67f192cf1b347f19cf08bd01c7ac554b501ec9bc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/f50b10d12a377270e6ad1923b53d0d4385f3e564 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/f25bd4a69e365af2ed266fa5bdda38d30150f0a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/time_service.o: mcc_generated_files/time_service.c  .generated_files/flags/default/676402a7aeb3bdd5b9d228cf341ba89f8cb7003e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/time_service.c  -o ${OBJECTDIR}/mcc_generated_files/time_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/time_service.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/aa684db8d45b87a2155b37d36f2f000eebae5a6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/db56ce5bf337a2c34ef6810ad9c2e57a4e1766ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/mcc_generated_files/cli/cli.o: mcc_generated_files/cli/cli.c  .generated_files/flags/default/f07c059ad55ce3d5d8389108c5a285f681e8bbcb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cli" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cli/cli.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cli/cli.c  -o ${OBJECTDIR}/mcc_generated_files/cli/cli.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cli/cli.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o: mcc_generated_files/cloud/crypto_client/crypto_client.c  .generated_files/flags/default/1a9c306c2fe2c66926920e32d15bcae78dc26f34 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/crypto_client/crypto_client.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/crypto_client/crypto_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o: mcc_generated_files/cloud/wifi_service.c  .generated_files/flags/default/975dae11ca1ca67c5a39c0add9107c55d54e28fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/wifi_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/wifi_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o: mcc_generated_files/cloud/cloud_service.c  .generated_files/flags/default/42d58660aca9c03500f5801d309614298d17dd92 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/cloud_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o: mcc_generated_files/cloud/aws_cloud_service.c  .generated_files/flags/default/b3d5a5c7718cd2cb4cbe235b43d87aa7027739e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/aws_cloud_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/aws_cloud_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o: mcc_generated_files/cloud/mqtt_service.c  .generated_files/flags/default/6ddfc04f708037dd12c9598aff49a553686d71de .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/cloud" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/cloud/mqtt_service.c  -o ${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/cloud/mqtt_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o: mcc_generated_files/credentials_storage/credentials_storage.c  .generated_files/flags/default/caf3c15bf520f379121d9be33054db2f4b427d26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/credentials_storage" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/credentials_storage/credentials_storage.c  -o ${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/credentials_storage/credentials_storage.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  .generated_files/flags/default/7e579a980806beeecba7d2c2de419629525d4f4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_pem.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  .generated_files/flags/default/587f0ab2a2dc1a0d34aa0333b49319d853600eca .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_der.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  .generated_files/flags/default/c422eacc57fea0407da0757fdbda6fe8db1c88e3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_def.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  .generated_files/flags/default/caebefaaf59a3cd5040712afe787d786029675ad .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_hw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  .generated_files/flags/default/bf9458f968f766f9816b74e1fda8826b9851563f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_client.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  .generated_files/flags/default/702ed37f0e85ef2afdb521c3048140c1425c9721 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_host_sw.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o: mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  .generated_files/flags/default/ad1d39346d9b4966bfe1a278899ad824220fd36b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atcacert/atcacert_date.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  .generated_files/flags/default/2cac2044fa0583d31463af90bd1d9dbb2629f181 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_selftest.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  .generated_files/flags/default/fd965970bc1cbee68d1aa0a47ca38412efaa19ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_ecdh.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  .generated_files/flags/default/1c6cda638b0bb4f6d8a552ac93b4c4f3bcf01001 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_nonce.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  .generated_files/flags/default/30976acfd3fd917937166fb6bd9f6ef53b66d672 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_privwrite.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  .generated_files/flags/default/cfbebf5f2ef8ba3388eb77a0572da2bfe58901b5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_helpers.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  .generated_files/flags/default/435bd59e78470a90aea9e2d5150f8eb1d5f67422 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_counter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  .generated_files/flags/default/ef55af1548de040577042288466570c10ac8d563 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_aes.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  .generated_files/flags/default/d0b2b0cd680cd1438ff059ef9463e10d8b97c8b6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_gendig.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  .generated_files/flags/default/593006ad8f6c55349b1d9af40d1b4146c01a42bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_hmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  .generated_files/flags/default/ec85dc70ff99858f488096eab77e3acaea6afb35 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_write.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  .generated_files/flags/default/66789e83c3c4a425571d6ac7c4e0eda223e52818 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_kdf.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  .generated_files/flags/default/c7637c185854d4d5dff01003d788a81e9f014c25 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_random.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  .generated_files/flags/default/7ddd692c35a5cb3b01005c555902b2d16f52c84e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_genkey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  .generated_files/flags/default/d7a5e1a45b0a3573f46bab225d79dad9cb915058 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sign.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  .generated_files/flags/default/e9402f4c6d47f5959ce9f9012d6dff0682d840a6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_verify.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  .generated_files/flags/default/4c82714d2248e7eddaacf7a85d795fd769664405 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_secureboot.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  .generated_files/flags/default/653d2ec552e1e55703e85e3f8c0618e46468c6be .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_derivekey.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  .generated_files/flags/default/bb5d7e40f2cda81687fb8fb203a4ed10a8a8a8b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  .generated_files/flags/default/d4a2ef62a8000aeb350ca9b08dfa157309cb30f9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_read.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  .generated_files/flags/default/10a9d7bb59afa70ee88d54a29a3d4aa731904de8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_info.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  .generated_files/flags/default/1b82d3d1ed33e5c76466718e14af8c4d13bbe3b4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_mac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  .generated_files/flags/default/74ff4dbc41e885ff549d281d060dda7dc5c5b7fa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_checkmac.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  .generated_files/flags/default/fb704c11d409d21a690079c15d5c966d2a54c840 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_sha.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  .generated_files/flags/default/c197cc6ba4905871b695600854f684d475d3a65e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_updateextra.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o: mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  .generated_files/flags/default/1ded4531215adc63cb39afe91df31f7a5f341f2a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/basic/atca_basic_lock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  .generated_files/flags/default/abeead9a8141f17a54172d8096973978f63bf073 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha1_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  .generated_files/flags/default/b8efcffa52aef5dc74ca5c248ff9551d3d7c72e1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/hashes/sha2_routines.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  .generated_files/flags/default/b0d562b1a18d7a8d821e67bae5a11a8a7a535ad1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_ecdsa.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  .generated_files/flags/default/fd39251d35c04f9ef0edf72b2738b9d47208bebd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_rand.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  .generated_files/flags/default/92010c507a6b45f00c497a79fa82fa71ae1529bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o: mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  .generated_files/flags/default/a9537a08b601f9fc92af9f949372f0fa1ad8e8a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/crypto/atca_crypto_sw_sha1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  .generated_files/flags/default/f2ca3a5f6f539ba48108aa479aa4b0e27a972470 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_i2c_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  .generated_files/flags/default/90b3fcc5298eb90c529bf022cd1d9684bc41fe29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/atca_hal.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o: mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  .generated_files/flags/default/4d872c913a0b7f953d2411d0c2986eb418e99331 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/hal/hal_i2c_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o: mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  .generated_files/flags/default/ec4cf2377806d43da92ec25ef3af813d38a9fbc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/host/atca_host.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o: mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  .generated_files/flags/default/3fbe62f765ff752bec1ce5571e500ec7b292e45d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/jwt/atca_jwt.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  .generated_files/flags/default/858cf65e0f53a3250bd301632a5cf25c5261280 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_command.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_command.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  .generated_files/flags/default/936c728691ec14f0440cc09dd4ed9ec85b79dca7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_execution.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  .generated_files/flags/default/f39e3bad4a6273d8985a6340dfb970637eae2891 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_cfgs.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  .generated_files/flags/default/3b1839443eff28137780ec7d819dcf4a92b83670 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_device.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_device.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o: mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  .generated_files/flags/default/d9f0ed030b9a6db3ec3dafbe60ce13ddd76ef43a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuthenticationLibrary/atca_iface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o: mcc_generated_files/drivers/i2c_simple_master.c  .generated_files/flags/default/1f0549a62165ef6d1c7ede518eebc50453dfa426 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_simple_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_simple_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o: mcc_generated_files/drivers/i2c_types.c  .generated_files/flags/default/3ddb98a291c0cdcfddbfb0b28d7537c996490bb8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_types.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_types.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o: mcc_generated_files/drivers/spi_master.c  .generated_files/flags/default/6a86e8d5c930709af69503691d63d4396661561c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/spi_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/spi_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o: mcc_generated_files/drivers/i2c_master.c  .generated_files/flags/default/b6679e179a6e07184e6ffb83b421a23a25fd3f26 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/i2c_master.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/i2c_master.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/uart.o: mcc_generated_files/drivers/uart.c  .generated_files/flags/default/497e21547efed7a129ef166a65e8dc06f16df88c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/uart.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/drivers/timeout.o: mcc_generated_files/drivers/timeout.c  .generated_files/flags/default/6e9168ff8c0526a02c6718783f66215f2316c514 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/drivers" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/drivers/timeout.c  -o ${OBJECTDIR}/mcc_generated_files/drivers/timeout.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/drivers/timeout.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o: mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  .generated_files/flags/default/9e18e03d650ac9f079ae70b3bcde18d7449d520e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_comm_bsd/mqtt_comm_layer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o: mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  .generated_files/flags/default/1585a887e581bcd730b9f73ec6506e406ff6e46b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_core/mqtt_core.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_core/mqtt_core.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o: mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  .generated_files/flags/default/f70bafbbb75875d2d005e7e8ca3e21cc7ae9be3c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_exchange_buffer/mqtt_exchange_buffer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o: mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  .generated_files/flags/default/df11ef870d33e68758730632699fe16b072f6ec0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_packetTransfer_interface.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_packetTransfer_interface.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o: mcc_generated_files/mqtt/mqtt_winc_adapter.c  .generated_files/flags/default/5086c4bb301895806e3da2cfda6f3920071e2447 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/mqtt" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mqtt/mqtt_winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mqtt/mqtt_winc_adapter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o: mcc_generated_files/winc/driver/winc_spi.c  .generated_files/flags/default/97344065a929efc2326a105079f6402b4e43ee60 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_spi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o: mcc_generated_files/winc/driver/winc_hif.c  .generated_files/flags/default/8957a2f5906688ba0f8474d23be6f64def5b36bd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_hif.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_hif.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o: mcc_generated_files/winc/driver/winc_asic.c  .generated_files/flags/default/c89f7bb4692cb3a6aac4abd80bab5d8eebda079d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_asic.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_asic.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o: mcc_generated_files/winc/driver/winc_adapter.c  .generated_files/flags/default/d4c45077c830f0ead1b9be08964ea876a9ec3662 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_adapter.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_adapter.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o: mcc_generated_files/winc/driver/winc_drv.c  .generated_files/flags/default/1fe308f9d90d17441d5bf602e2282c13496684e5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/driver" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/driver/winc_drv.c  -o ${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/driver/winc_drv.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o: mcc_generated_files/winc/m2m/m2m_ota.c  .generated_files/flags/default/3b3b363b929dd6bef3bf95d2689b5826fae2cf39 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ota.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ota.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o: mcc_generated_files/winc/m2m/m2m_crypto.c  .generated_files/flags/default/3581e54558e72c83651fb87144c1ad321e94bb03 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_crypto.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_crypto.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o: mcc_generated_files/winc/m2m/m2m_fwinfo.c  .generated_files/flags/default/38f07442daac27f8a838777c2ad3f564a3dcd026 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_fwinfo.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_fwinfo.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o: mcc_generated_files/winc/m2m/m2m_ssl.c  .generated_files/flags/default/ed2f3edb5b25cc514941744f343588a8ffe3c999 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_ssl.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_ssl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o: mcc_generated_files/winc/m2m/m2m_wifi.c  .generated_files/flags/default/d7120141b879ffbd75689e1c44c71d20ca0126f7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_wifi.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_wifi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o: mcc_generated_files/winc/m2m/m2m_periph.c  .generated_files/flags/default/261fbc857fbcd54694064e24d272cf04e5696af3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/m2m" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/m2m/m2m_periph.c  -o ${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/m2m/m2m_periph.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o: mcc_generated_files/winc/socket/socket.c  .generated_files/flags/default/bc45744988dcd4b1727ce75d1e531bf6ed46fa0b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/socket" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/socket/socket.c  -o ${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/socket/socket.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o: mcc_generated_files/winc/spi_flash/flexible_flash.c  .generated_files/flags/default/11eff6eaf1229ac37815261b2309aeba3abf63ef .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/flexible_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/flexible_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o: mcc_generated_files/winc/spi_flash/spi_flash.c  .generated_files/flags/default/20c230cddd83d98122aec902269af73fd3280785 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/winc/spi_flash" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/winc/spi_flash/spi_flash.c  -o ${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/winc/spi_flash/spi_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  .generated_files/flags/default/ee5d25dda15907786840bba76548d573bf23b2d4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  .generated_files/flags/default/78b1ab4415fdcffc20e43c4baffca67394aa14c1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  .generated_files/flags/default/529f4e16c7fbb622ded07b44edf34634ac42f4ac .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/application_manager.o: mcc_generated_files/application_manager.c  .generated_files/flags/default/311202b9c75be12943156e3396d45e1ca8ce8dbf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/application_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/application_manager.c  -o ${OBJECTDIR}/mcc_generated_files/application_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/application_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/sensors_handling.o: mcc_generated_files/sensors_handling.c  .generated_files/flags/default/b038e95549434e5c671766b3eb2bb45bee6e7bff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/sensors_handling.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/sensors_handling.c  -o ${OBJECTDIR}/mcc_generated_files/sensors_handling.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/sensors_handling.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/delay.o: mcc_generated_files/delay.c  .generated_files/flags/default/ba646708235917d6f62030ae70df294b037ec564 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/delay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/delay.c  -o ${OBJECTDIR}/mcc_generated_files/delay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/delay.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/clock.o: mcc_generated_files/clock.c  .generated_files/flags/default/2625cba99dec02fda09cb35bc46ff9dd464f443b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/clock.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/clock.c  -o ${OBJECTDIR}/mcc_generated_files/clock.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/clock.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  .generated_files/flags/default/5e67500394a9db7d01f418d6165debf2512d84da .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr2.c  -o ${OBJECTDIR}/mcc_generated_files/tmr2.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  .generated_files/flags/default/e0e5fb4e89530be6dd7875a3df964bef8801aa71 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/tmr1.c  -o ${OBJECTDIR}/mcc_generated_files/tmr1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  .generated_files/flags/default/de7368bd60f55231257fbea1145b0503b0ea144e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/system.o: mcc_generated_files/system.c  .generated_files/flags/default/c1ddb887f18026f6a32252f904d08c0ad7730e70 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/system.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/system.c  -o ${OBJECTDIR}/mcc_generated_files/system.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/system.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/led.o: mcc_generated_files/led.c  .generated_files/flags/default/a09a5d559be571a1070ba2c9a390609bec88cae5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/led.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/led.c  -o ${OBJECTDIR}/mcc_generated_files/led.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/led.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/debug_print.o: mcc_generated_files/debug_print.c  .generated_files/flags/default/72d634bc50a9777907efdbc3656ecd856fb39d14 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/debug_print.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/debug_print.c  -o ${OBJECTDIR}/mcc_generated_files/debug_print.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/debug_print.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/i2c2_driver.o: mcc_generated_files/i2c2_driver.c  .generated_files/flags/default/9bd861ce87016e1a48ecc1124b45716ab54ecffd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/i2c2_driver.c  -o ${OBJECTDIR}/mcc_generated_files/i2c2_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/i2c2_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  .generated_files/flags/default/9b386b9f1ac91738286128eaae5160e365108f29 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/traps.o: mcc_generated_files/traps.c  .generated_files/flags/default/f5d2c69dfcf1679778db65f7b7d1f812f4288275 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/traps.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/traps.c  -o ${OBJECTDIR}/mcc_generated_files/traps.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/traps.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/spi1_driver.o: mcc_generated_files/spi1_driver.c  .generated_files/flags/default/5dcc1f0db845fdde96b8460be8bafce4d9d5e975 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1_driver.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/spi1_driver.c  -o ${OBJECTDIR}/mcc_generated_files/spi1_driver.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1_driver.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/time_service.o: mcc_generated_files/time_service.c  .generated_files/flags/default/29fbc3539e69df031fac3292fd5795244122e34c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/time_service.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/time_service.c  -o ${OBJECTDIR}/mcc_generated_files/time_service.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/time_service.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o: mcc_generated_files/CryptoAuth_init.c  .generated_files/flags/default/1e6e93734ca08503e098f64c39a6cee777131077 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/CryptoAuth_init.c  -o ${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mcc_generated_files/CryptoAuth_init.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary" -ffunction-sections -O0 -DAWS_IOT -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/main.o: main.c  .generated_files/flags/default/16a9e9631311ae7c801a4c144411ea3783dc3d31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
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
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/PICIoT.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -I"mcc_generated_files/config" -I"mcc_generated_files/winc" -I"mcc_generated_files/drivers" -I"mcc_generated_files" -I"mcc_generated_files/CryptoAuthenticationLibrary"  -mreserve=data@0x800:0x81B -mreserve=data@0x81C:0x81D -mreserve=data@0x81E:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x827 -mreserve=data@0x82A:0x84F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
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
