import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';

class AddNewItem2 extends StatefulWidget {
  @override
  _AddNewItem2State createState() => _AddNewItem2State();
}

class _AddNewItem2State extends State<AddNewItem2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("ที่อยู่"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16, right: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                    "ส่วนนี้จะเป็นรายละเอียดที่อยู่เพื่อส่งพัสดุกลับให้ลูกค้าครับ"),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(.17),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        "เลือกที่อยู่ที่มีอยู่แล้ว",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Icon(FeatherIcons.chevronRight),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Divider(
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "ที่อยู่ใหม่",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        maxLines: 2,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ที่อยู่",
                        ),
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
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "รหัสไปรษณีย์",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "จังหวัด",
                            suffixIcon: Icon(FeatherIcons.chevronDown)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "อำเภอ",
                            suffixIcon: Icon(FeatherIcons.chevronDown)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "ตำบล",
                            suffixIcon: Icon(FeatherIcons.chevronDown)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => print("ต่อไป"),
        child: Icon(FeatherIcons.check),
      ),
    );
  }
}
