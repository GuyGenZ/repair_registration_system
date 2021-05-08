import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "สมัครสมาชิก",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.only(left: 16),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "ชื่อ",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 8),
                      padding: EdgeInsets.only(left: 16),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "นามสกุล",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "อีเมล์",
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("นี่จะเป็น ID ไว้เข้าสู่ระบบ"),
                ],
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "รหัสผ่าน",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "ยืนยันรหัสผ่าน",
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    Text("+66 (ไทย)"),
                    Spacer(),
                    Icon(FeatherIcons.chevronDown),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "หมายเลขโทรศัพท์",
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "แน่ใจว่าคุณป้อนหมายเลขโทรศัพท์ที่คุณสามารถเข้าถึงได้ตลอดเวลา หมายเลขโทรศัพท์จะถูกใช้เพื่อตรวจสอบยืนยัน",
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(FeatherIcons.check),
        onPressed: () => print("สมัครสมาชิก"),
      ),
    );
  }
}
