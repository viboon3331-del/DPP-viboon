#!/bin/bash

# ตรวจสอบว่ามี Argument หรือไม่ (จำนวนเป็น 0)
if [ $# -eq 0 ]; then
    echo "แจ้งเตือน: กรุณาระบุ Argument อย่างน้อย 1 ตัว (สูงสุด 3 ตัว)"
    exit 1

# ถ้ามี Argument ระหว่าง 1 ถึง 3 ตัว
elif [ $# -le 3 ]; then
    echo "จำนวน Argument ที่รับเข้ามา: $# ตัว"
    echo "รายการ Argument:"
    for arg in "$@"; do
        echo "- $arg"
    done

# ถ้าใส่ Argument เกิน 3 ตัว (จำกัดแสดงไม่เกิน 3 ตัวแรก)
else
    echo "แจ้งเตือน: คุณใส่ Argument มา $# ตัว ซึ่งเกินกำหนด (แสดงผลเฉพาะ 3 ตัวแรก)"
    echo "1. $1"
    echo "2. $2"
    echo "3. $3"
fi 
