import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _Username = TextEditingController();
  TextEditingController _Password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xffFF9F29),
                    Color(0xffE8AA42),
                    Color(0xffFAC213),
                    Color(0xffFFEE63),
                  ])),
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 120,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'SIK TENJOLAYA',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('NIK'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffF9FFA4),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 6,
                                    offset: Offset(0, 2))
                              ]),
                          height: 60,
                          child: TextField(
                            controller: _Username,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14),
                                prefixIcon: Icon(
                                  Icons.add_card_rounded,
                                  color: Color(0xffFECD70),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Text('PIN'),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color(0xffF9FFA4),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black87,
                                    blurRadius: 6,
                                    offset: Offset(0, 2))
                              ]),
                          height: 60,
                          child: TextField(
                            controller: _Password,
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14),
                                prefixIcon: Icon(
                                  Icons.key_outlined,
                                  color: Color(0xffFECD70),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                child: Container(
                                  child: Text(
                                    "Belum Punya Akun / Daftar!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                onTap: (() {
                                  print("Tapp");
                                })),
                          ],
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffFF8D29),
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4, 4)),
                                    BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 2,
                                        blurRadius: 8,
                                        offset: Offset(-4, -4))
                                  ]),
                              child: Center(child: Text("Login")),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
