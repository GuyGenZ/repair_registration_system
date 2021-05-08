import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:k_electric/constants.dart';
import 'package:k_electric/screens/add_new_item/add_new_item1.dart';
import 'package:k_electric/screens/add_new_item/add_new_item2.dart';
import 'package:k_electric/screens/book_address/book_address.dart';
import 'package:k_electric/screens/home_screen/home_screen.dart';
import 'package:k_electric/screens/self_info/self_info.dart';
import 'package:k_electric/screens/signup_screen/singup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "//": (context) => MainScreen(),
        "/home": (context) => HomeScreen(),
        "/signup": (context) => SignUpScreen(),
        "/addnewitem1": (context) => AddNewItem1(),
        "/addnewitem2": (context) => AddNewItem2(),
        "/selfinfo": (context) => SelfInfo(),
        "/bookaddress": (context) => BookAddress(),
      },
      theme: ThemeData(
        fontFamily: "Mitr",
        primaryColor: kDefaultColor,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String _email = "", _password = "";
  TextEditingController _value = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultColor,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("เข้าสู่ระบบ"),
                Text(
                  "Title App Name",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    height: 50,
                    child: _email == ""
                        ? TextField(
                            controller: _value,
                            onChanged: (val) {
                              setState(() {});
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "อีเมล์หรือชื่อผู้ใช้",
                              suffixIcon: _value.value.text.length > 0
                                  ? GestureDetector(
                                      onTap: () {
                                        _email = _value.value.text;
                                        setState(() {
                                          _value.clear();
                                        });
                                      },
                                      child: Icon(
                                        FeatherIcons.arrowRightCircle,
                                        color: Colors.black,
                                      ),
                                    )
                                  : Text(""),
                            ),
                          )
                        : TextField(
                            obscureText: true,
                            controller: _value,
                            onChanged: (val) {
                              setState(() {
                                _password = val;
                              });
                            },
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "รหัสผ่าน",
                              suffixIcon: _value.value.text.length > 0
                                  ? GestureDetector(
                                      onTap: () {
                                        if (_email == "admin" &&
                                            _password == "password") {
                                          Navigator.pushNamedAndRemoveUntil(
                                              context,
                                              "/home",
                                              (route) => false);
                                        } else {
                                          print(
                                              "ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง");
                                        }
                                      },
                                      child: Icon(
                                        FeatherIcons.arrowRightCircle,
                                        color: Colors.black,
                                      ),
                                    )
                                  : Text(""),
                            ),
                          ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, "/signup"),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "ยังไม่เป็นสมาชิก?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
