/*
   Copyright (c) 2016, The CyanogenMod Project

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are
   met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above
      copyright notice, this list of conditions and the following
      disclaimer in the documentation and/or other materials provided
      with the distribution.
    * Neither the name of The Linux Foundation nor the names of its
      contributors may be used to endorse or promote products derived
      from this software without specific prior written permission.

   THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
   WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT
   ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
   BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
   BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
   OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
   IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#include <cstdlib>
#include <fstream>
#include <string>

#include "vendor_init.h"
#include "property_service.h"
#include "log.h"
#include "util.h"

void vendor_load_properties()
{
    std::ifstream fin;
    std::string buf;

    std::string product = property_get("ro.product.name");
    if (product.find("land") == std::string::npos)
        return;

    fin.open("/proc/cmdline");
    while (std::getline(fin, buf, ' '))
        if (buf.find("board_id") != std::string::npos)
            break;
    fin.close();

    if (buf.find("S88537AA1") != std::string::npos) {
        property_set("ro.build.display.wtid", "SW_S88537AA1_V071_M20_MP_XM");
    } else if (buf.find("S88537AB1") != std::string::npos) {
        property_set("ro.build.display.wtid", "SW_S88537AB1_V071_M20_MP_XM");
    } else if (buf.find("S88537AC1") != std::string::npos) {
        property_set("ro.build.display.wtid", "SW_S88537AC1_V071_M20_MP_XM");
    } else if (buf.find("S88537BA1") != std::string::npos) {
        property_set("ro.build.display.wtid", "SW_S88537BA1_V071_M20_MP_XM");
    } else if (buf.find("S88537CA1") != std::string::npos) {
        property_set("ro.build.display.wtid", "SW_S88537CA1_V071_M20_MP_XM");
    } else if (buf.find("S88537EC1") != std::string::npos) {
        property_set("ro.build.display.wtid", "SW_S88537EC1_V071_M20_MP_XM");
    }

    if (buf.find("S88537AB1") != std::string::npos) {
        property_set("ro.product.model", "Redmi 3X");
    } else {
        property_set("ro.product.model", "Redmi 3S");
    }
}
