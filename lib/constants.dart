import 'package:flutter/material.dart';
import 'package:k_electric/models/item_model.dart';

//สี
const kDefaultColor = Color(0xffD9DCFF); //สีหลัก
const workYet = Color(0xffFF9D00); //สีเหลือง กำลังดำเนินงาน
const workDone = Color(0xff20A500); //สีเขียว สำเร็จ
//ตัวเลือกแบบ Enum

enum AccountMenu { selfInfo, logout }
enum Filter { done, yet }

//โมเดล

List<ItemModel> items = [
  ItemModel(
    id: 1,
    type: "เครื่องใช้ไฟฟ้า",
    name: "พัดลม Hatari",
    serialID: "123123123123",
    topic: "ไฟไม่เข้า",
    moreComment: "",
    time1: "1 พ.ค 2564",
    time2: "-",
    status: "ช่างได้รับพัสดุแล้ว",
  ),
  ItemModel(
    id: 2,
    type: "เครื่องใช้ไฟฟ้า",
    name: "เครื่องทำนำร้อน ",
    serialID: "483928482332",
    topic: "อยู่ก็ดับไปเฉยๆ",
    moreComment: "",
    time1: "29 เม.ย 2564",
    time2: "4 พ.ค 2564",
    status: "ดำเนินการซ่อม",
  ),
  ItemModel(
    id: 3,
    type: "เครื่องใช้ไฟฟ้า",
    name: "ตู้เย็น",
    serialID: "124559683475",
    topic: "ไม่ค่อยเย็น",
    moreComment: "",
    time1: "23 เม.ย 2564",
    time2: "2 พ.ค 2564",
    status: "ซ่อมสำเร็จ",
  ),
];
