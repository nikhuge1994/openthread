#
#  Copyright (c) 2019, The OpenThread Authors.
#  All rights reserved.
#
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:
#  1. Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#  2. Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#  3. Neither the name of the copyright holder nor the
#     names of its contributors may be used to endorse or promote products
#     derived from this software without specific prior written permission.
#
#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.
#

option(OT_APP_CLI "enable CLI app" ON)
option(OT_APP_NCP "enable NCP app" ON)
option(OT_APP_RCP "enable RCP app" ON)

option(OT_BACKBONE_ROUTER "enable backbone router functionality")
if(OT_BACKBONE_ROUTER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_BACKBONE_ROUTER_ENABLE=1")
endif()

option(OT_BORDER_AGENT "enable border agent support")
if(OT_BORDER_AGENT)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_BORDER_AGENT_ENABLE=1")
endif()

option(OT_BORDER_ROUTER "enable border router support")
if(OT_BORDER_ROUTER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_BORDER_ROUTER_ENABLE=1")
endif()

if(NOT OT_EXTERNAL_MBEDTLS)
    set(OT_MBEDTLS mbedtls)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_ENABLE_BUILTIN_MBEDTLS=1")
else()
    set(OT_MBEDTLS ${OT_EXTERNAL_MBEDTLS})
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_ENABLE_BUILTIN_MBEDTLS=0")
endif()

option(OT_BUILTIN_MBEDTLS_MANAGEMENT "enable builtin mbedtls management" ON)
if(OT_BUILTIN_MBEDTLS_MANAGEMENT)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_ENABLE_BUILTIN_MBEDTLS_MANAGEMENT=1")
else()
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_ENABLE_BUILTIN_MBEDTLS_MANAGEMENT=0")
endif()

option(OT_CHANNEL_MANAGER "enable channel manager support")
if(OT_CHANNEL_MANAGER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_CHANNEL_MANAGER_ENABLE=1")
endif()

option(OT_CHANNEL_MONITOR "enable channel monitor support")
if(OT_CHANNEL_MONITOR)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_CHANNEL_MONITOR_ENABLE=1")
endif()

option(OT_CHILD_SUPERVISION "enable child supervision support")
if(OT_CHILD_SUPERVISION)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_CHILD_SUPERVISION_ENABLE=1")
endif()

option(OT_COAP "enable coap api support")
if(OT_COAP)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_COAP_API_ENABLE=1")
endif()

option(OT_COAPS "enable secure coap api support")
if(OT_COAPS)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_COAP_SECURE_API_ENABLE=1")
endif()

option(OT_COAP_OBSERVE "enable coap observe (RFC7641) api support")
if(OT_COAP_OBSERVE)
    list(APPEND OT_PRIVATE_DEFINES "OPENTHREAD_CONFIG_COAP_OBSERVE_API_ENABLE=1")
endif()

option(OT_COMMISSIONER "enable commissioner support")
if(OT_COMMISSIONER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_COMMISSIONER_ENABLE=1")
endif()

option(OT_CSL_RECEIVER "enable csl receiver")
if(OT_CSL_RECEIVER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_MAC_CSL_RECEIVER_ENABLE=1")
endif()

option(OT_DHCP6_CLIENT "enable DHCP6 client support")
if(OT_DHCP6_CLIENT)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_DHCP6_CLIENT_ENABLE=1")
endif()

option(OT_DHCP6_SERVER "enable DHCP6 server support")
if(OT_DHCP6_SERVER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_DHCP6_SERVER_ENABLE=1")
endif()

option(OT_DIAGNOSTIC "enable diagnostic support")
if(OT_DIAGNOSTIC)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_DIAG_ENABLE=1")
endif()

option(OT_DNS_CLIENT "enable DNS client support")
if(OT_DNS_CLIENT)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_DNS_CLIENT_ENABLE=1")
endif()

option(OT_ECDSA "enable ECDSA support")
if(OT_ECDSA)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_ECDSA_ENABLE=1")
endif()

option(OT_DUA "enable Domain Unicast Address feature for Thread 1.2")
if(OT_DUA)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_DUA_ENABLE=1")
endif()

option(OT_EXTERNAL_HEAP "enable external heap support")
if(OT_EXTERNAL_HEAP)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_HEAP_EXTERNAL_ENABLE=1")
endif()

option(OT_IP6_FRAGM "enable ipv6 fragmentation support")
if(OT_IP6_FRAGM)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_IP6_FRAGMENTATION_ENABLE=1")
endif()

option(OT_JAM_DETECTION "enable jam detection support")
if(OT_JAM_DETECTION)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_JAM_DETECTION_ENABLE=1")
endif()

option(OT_JOINER "enable joiner support")
if(OT_JOINER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_JOINER_ENABLE=1")
endif()

option(OT_LEGACY "enable legacy network support")
if(OT_LEGACY)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LEGACY_ENABLE=1")
endif()

option(OT_LINK_RAW "enable link raw service")
if(OT_LINK_RAW)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LINK_RAW_ENABLE=1")
endif()

option(OT_LOG_LEVEL_DYNAMIC "enable dynamic log level control")
if(OT_LOG_LEVEL_DYNAMIC)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_LEVEL_DYNAMIC_ENABLE=1")
endif()

option(OT_MAC_FILTER "enable mac filter support")
if(OT_MAC_FILTER)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_MAC_FILTER_ENABLE=1")
endif()

option(OT_MLE_LONG_ROUTES "enable MLE long routes extension (experimental, breaks Thread conformance)")
if(OT_MLE_LONG_ROUTES)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_MLE_LONG_ROUTES_ENABLE=1")
endif()

option(OT_MTD_NETDIAG "enable TMF network diagnostics on MTDs")
if(OT_MTD_NETDIAG)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_TMF_NETWORK_DIAG_MTD_ENABLE=1")
endif()

option(OT_MULTIPLE_INSTANCE "enable multiple instances")
if(OT_MULTIPLE_INSTANCE)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_MULTIPLE_INSTANCE_ENABLE=1")
endif()

option(OT_PLATFORM_NETIF "enable platform netif support")
if(OT_PLATFORM_NETIF)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_PLATFORM_NETIF_ENABLE=1")
endif()

option(OT_PLATFORM_UDP "enable platform UDP support")
if(OT_PLATFORM_UDP)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_PLATFORM_UDP_ENABLE=1")
endif()

option(OT_REFERENCE_DEVICE "enable Thread Test Harness reference device support")
if(OT_REFERENCE_DEVICE)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_REFERENCE_DEVICE_ENABLE=1")
endif()

option(OT_SERVICE "enable support for injecting Service entries into the Thread Network Data")
if(OT_SERVICE)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_TMF_NETDATA_SERVICE_ENABLE=1")
endif()

option(OT_SETTINGS_RAM "enable volatile-only storage of settings")
if(OT_SETTINGS_RAM)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_SETTINGS_RAM=1")
endif()

option(OT_SLAAC "enable support for adding of auto-configured SLAAC addresses by OpenThread")
if(OT_SLAAC)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_IP6_SLAAC_ENABLE=1")
endif()

option(OT_SNTP_CLIENT "enable SNTP Client support")
if(OT_SNTP_CLIENT)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_SNTP_CLIENT_ENABLE=1")
endif()

option(OT_TIME_SYNC "enable the time synchronization service feature")
if(OT_TIME_SYNC)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_TIME_SYNC_ENABLE=1")
endif()

option(OT_UDP_FORWARD "enable UDP forward support")
if(OT_UDP_FORWARD)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_UDP_FORWARD_ENABLE=1")
endif()

option(OT_FULL_LOGS "enable full logs")
if(OT_FULL_LOGS)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_LEVEL=OT_LOG_LEVEL_DEBG")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_API=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_ARP=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_BBR=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_CLI=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_COAP=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_ICMP=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_IP6=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_MAC=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_MEM=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_MESHCOP=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_MLE=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_MLR=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_NETDATA=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_NETDIAG=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_PKT_DUMP=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_PLATFORM=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_PREPEND_LEVEL=1")
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_LOG_PREPEND_REGION=1")
endif()

option(OT_OTNS "enable OTNS support")
if(OT_OTNS)
    target_compile_definitions(ot-config INTERFACE "OPENTHREAD_CONFIG_OTNS_ENABLE=1")
endif()

# Checks
if(OT_PLATFORM_UDP AND OT_UDP_FORWARD)
    message(FATAL_ERROR "OT_PLATFORM_UDP and OT_UDP_FORWARD are exclusive")
endif()
