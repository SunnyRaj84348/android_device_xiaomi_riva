#!/sbin/sh
board_id="";
for e in $(cat /proc/cmdline);
do
    tmp=$(echo $e | grep "board_id" > /dev/null);
    if [ "0" == "$?" ]; then
        board_id=$(echo $e |cut -d":" -f0 |cut -d"=" -f2);
    fi
done

if [ "$board_id" = "S88537AC1" ]; || [ "$board_id" = "S88537EC1"]; then
    # Redmi 3S Don't have FP
    rm /system/bin/fingerprintd
    rm /system/bin/gx_fpcmd
    rm /system/bin/gx_fpd
    rm /system/etc/permissions/android.hardware.fingerprint.xml
    rm /system/lib/hw/fingerprint.msm8937.so
    rm /system/lib/libcom_fingerprints_service.so
    rm /system/lib64/hw/fingerprint.msm8937.so
    rm /system/lib64/hw/fingerprint.goodix.so
    rm /system/lib64/hw/gxfingerprint.default.so
    rm /system/lib64/libcom_fingerprints_service.so
    rm /system/lib64/libfp_client.so
    rm /system/lib64/libfpservice.so
    rm /system/lib64/libfpnav.so
fi
