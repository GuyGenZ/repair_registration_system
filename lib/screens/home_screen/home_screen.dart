import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';
import 'package:k_electric/screens/detail_screen/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kDefaultColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("รายการส่งซ่อมของฉัน"),
        actions: [
          PopupMenuButton<AccountMenu>(
            onSelected: choiceAction,
            tooltip: "เมนู",
            itemBuilder: (context) => <PopupMenuEntry<AccountMenu>>[
              PopupMenuItem<AccountMenu>(
                value: AccountMenu.selfInfo,
                child: Text('ข้อมูลส่วนตัว'),
              ),
              PopupMenuDivider(),
              PopupMenuItem<AccountMenu>(
                value: AccountMenu.logout,
                child: Text('ออกจากระบบ'),
              ),
            ],
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avata1.png"),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10, right: 16),
            child: PopupMenuButton(
              onSelected: choiceFilter,
              tooltip: "ตัวกรอง",
              itemBuilder: (context) => <PopupMenuEntry<Filter>>[
                PopupMenuItem<Filter>(
                  value: Filter.yet,
                  child: Text('กำลังซ่อม'),
                ),
                PopupMenuDivider(),
                PopupMenuItem<Filter>(
                  value: Filter.done,
                  child: Text('ซ่อมเสร็จ'),
                ),
              ],
              child: Icon(FeatherIcons.filter),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          itemModel: items[index],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.only(left: 30),
                    height: 70,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(7),
                        bottomLeft: Radius.circular(7),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 2),
                          blurRadius: 5,
                          color: Colors.black.withOpacity(.17),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: items[index].status == "ซ่อมสำเร็จ"
                                    ? workDone
                                    : workYet,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                items[index].name,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "กดเพื่อดูรายละเอียด",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(FeatherIcons.plus),
        onPressed: () => Navigator.pushNamed(context, "/addnewitem1"),
      ),
    );
  }

  void choiceAction(AccountMenu choice) {
    switch (choice) {
      case AccountMenu.selfInfo:
        Navigator.pushNamed(context, "/selfinfo");
        break;
      case AccountMenu.logout:
        Navigator.pushNamedAndRemoveUntil(context, "//", (route) => false);
        break;
      default:
    }
  }

  void choiceFilter(Filter choice) {
    switch (choice) {
      case Filter.yet:
        print(choice);
        break;
      case Filter.done:
        print(choice);
        break;

      default:
    }
  }
}
