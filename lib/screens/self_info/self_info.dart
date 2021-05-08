import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';

class SelfInfo extends StatefulWidget {
  @override
  _SelfInfoState createState() => _SelfInfoState();
}

class _SelfInfoState extends State<SelfInfo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("ข้อมูลส่วนตัว"),
        actions: [
          IconButton(
              tooltip: "แก้ไข",
              icon: Icon(
                FeatherIcons.edit2,
                size: 20,
              ),
              onPressed: () => print("ok"))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage("assets/images/avata1.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FeatherIcons.user,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("ชื่อ นามสกุล"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FeatherIcons.atSign,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("guyxdz@gmail.com"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FeatherIcons.phone,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("09xxxxxxxx"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FeatherIcons.facebook,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Guy Nobpanat"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Divider(
                  endIndent: 20,
                  indent: 20,
                  thickness: 1,
                ),
              ),
              Row(
                children: [
                  Icon(FeatherIcons.book),
                  SizedBox(width: 10),
                  Text(
                    "สมุดที่อยู่",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(fontSize: 18),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "ที่อยู่ในส่วนนี้เป็นที่อยู่สำหรับส่งพัสดุคืนลูกค้า")),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 75,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(.17),
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ที่อยู่หลัก",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text("xx หมู่x ต.xx อ.xx จ.xx 20xxx")
                          ],
                        )),
                    Spacer(),
                    Icon(FeatherIcons.chevronRight)
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "/bookaddress"),
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  height: 50,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 1),
                        blurRadius: 6,
                        color: Colors.black.withOpacity(.17),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "เพิ่มที่อยู่ใหม่",
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        FeatherIcons.plus,
                        size: 20,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
