################################################################################
#
# Windows configuration options for openPOWERLINK stack
#
# Copyright (c) 2015, Bernecker+Rainer Industrie-Elektronik Ges.m.b.H. (B&R)
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the copyright holders nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
################################################################################

SET (CFG_BUILD_KERNEL_STACK "Stack on PCIe"
    CACHE STRING "Configure how to build the kernel stack")

IF (CFG_BUILD_KERNEL_STACK STREQUAL "Stack on PCIe")
    SET (CFG_KERNEL_STACK_PCIE ON CACHE INTERNAL
         "Build kernel stack on PCIe card")
    UNSET (CFG_KERNEL_STACK_USERSPACE_DAEMON CACHE)
    UNSET (CFG_KERNEL_STACK_DIRECTLINK CACHE)

ELSEIF (CFG_BUILD_KERNEL_STACK STREQUAL "None")
    UNSET (CFG_KERNEL_STACK_DIRECTLINK CACHE)
    UNSET (CFG_KERNEL_STACK_USERSPACE_DAEMON CACHE)
    UNSET (CFG_KERNEL_STACK_PCIE CACHE)

ENDIF ()
