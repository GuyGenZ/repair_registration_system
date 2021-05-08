import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';

class AddNewItem1 extends StatefulWidget {
  @override
  _AddNewItem1State createState() => _AddNewItem1State();
}

class _AddNewItem1State extends State<AddNewItem1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("รายละเอียดพัสดุ"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16, right: 16),
          child: Column(
            children: [
              Container(
                height: 50,
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
                        "หมวดหมู่",
                        style: TextStyle(fontSize: 16),
                      ),
                      Spacer(),
                      Icon(FeatherIcons.chevronDown),
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
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ชื่อพัสดุ",
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "หมายเลขเครื่อง/ซีเรียล",
                    ),
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
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ปัญหา/สาเหตุ",
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "ปัญหา/สาเหตุ",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/addnewitem2"),
        child: Icon(FeatherIcons.chevronRight),
      ),
    );
  }
}
