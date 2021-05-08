import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';
import 'package:k_electric/models/item_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key, this.itemModel}) : super(key: key);
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("รายละเอียดการส่งซ่อม"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.25),
                width: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "รายละเอียด",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                    customIconWithTitle(
                        FeatherIcons.file, "พัสดุ", "${itemModel.name}"),
                    customIconWithTitle(FeatherIcons.calendar, "วันที่ส่งซ่อม",
                        "${itemModel.time1}"),
                    customIconWithTitle(FeatherIcons.clock, "วันที่รับซ่อม",
                        "${itemModel.time2}"),
                    customIconWithTitle(FeatherIcons.settings, "ปัญหา/สาเหตุ",
                        "${itemModel.topic}"),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                      child: Text(
                        "ประวัติการทำรายการ",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "สถานะการดำเนินงาน",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                    ),
                    customCircleWithTitle(
                        itemModel.status == "รอพัสดุจากลูกค้า"
                            ? Color(0xff20A500)
                            : Colors.white,
                        "รอพัสดุจากลูกค้า"),
                    customCircleWithTitle(
                        itemModel.status == "ช่างได้รับพัสดุแล้ว"
                            ? Color(0xff20A500)
                            : Colors.white,
                        "ช่างได้รับพัสดุแล้ว"),
                    customCircleWithTitle(
                        itemModel.status == "ดำเนินการซ่อม"
                            ? Color(0xff20A500)
                            : Colors.white,
                        "ดำเนินการซ่อม"),
                    customCircleWithTitle(
                        itemModel.status == "ซ่อมสำเร็จ"
                            ? Color(0xff20A500)
                            : Colors.white,
                        "ซ่อมสำเร็จ"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding customIconWithTitle(IconData icon, String title, String topic) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 8),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 5),
          Text(
            "$title",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          SizedBox(width: 20),
          Text(
            "$topic",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }

  Padding customCircleWithTitle(Color color, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
          ),
          SizedBox(width: 8),
          Text("$title"),
        ],
      ),
    );
  }
}
