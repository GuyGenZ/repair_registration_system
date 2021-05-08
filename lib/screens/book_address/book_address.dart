import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';

class BookAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("เพิ่มที่อยู่ใหม่"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "ที่อยู่ใหม่",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  maxLines: 2,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "ที่อยู่",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "กรุณาตรวจสอบที่อยู่ของท่านให้ถูกต้อง",
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "รหัสไปรษณีย์",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  enabled: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "จังหวัด",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  enabled: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "อำเภอ",
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.only(
                  left: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  onTap: () => print("เลือกตำบล"),
                  readOnly: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ตำบล",
                      suffixIcon: Icon(FeatherIcons.chevronDown)),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("บันทึกที่อยู่ใหม่"),
        child: Icon(FeatherIcons.check),
      ),
    );
  }
}
