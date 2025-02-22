import 'package:cari_kost/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:cari_kost/screen/auth/register,dart.dart';

class login extends StatelessWidget {
  static const nameroute = '/login';
  @override
  Widget build(BuildContext context) {
    final bodywidht = MediaQuery.of(context).size.width;
    final bodyheight = MediaQuery.of(context).size.height;
    final batas = MediaQuery.of(context).padding.top;

    final AppBar judul = AppBar(
      backgroundColor: Colors.blue,
      // centerTitle: true,
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage("images/door.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
      ),
      title: Text(
        "Cari Kost",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Container(
            padding: EdgeInsets.only(right: 10),
            child: Builder(
                builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Icon(Icons.menu),
                    )))
      ],
    );

    final lastbody = bodyheight - batas - judul.preferredSize.height;
    final manjang = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: judul,
      drawer: Drawer(
          width: 200,
          child: (manjang
              ?
              //     Landscape
              Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 29),
                      height: judul.preferredSize.height * 1.43,
                      color: Colors.blue,
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage("images/door.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              )),
                        ),
                        title: Text(
                          "Cari Kost",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(landingpage.nameroute);
                        },
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        leading: Icon(Icons.person),
                        title: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(register.nameroute);
                        },
                        leading: Icon(Icons.people),
                        title: Text("Register"),
                      ),
                    )
                  ],
                )
              :
              //     Portrait
              Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 29),
                      height: judul.preferredSize.height * 1.48,
                      color: Colors.blue,
                      child: ListTile(
                        leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage("images/door.png"),
                                fit: BoxFit.cover,
                                alignment: Alignment.center,
                              )),
                        ),
                        title: Text(
                          "Cari Kost",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(landingpage.nameroute);
                        },
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        leading: Icon(Icons.person),
                        title: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed(register.nameroute);
                        },
                        leading: Icon(Icons.people),
                        title: Text("Register"),
                      ),
                    )
                  ],
                ))),
      body: Container(
        // padding: EdgeInsets.all(10),
        color: Colors.grey,
        child: Center(
            child: (manjang
                ?
                //     Landscape
                Container(
                    width: bodywidht * 0.5,
                    height: lastbody * 1.2,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Selamat Datang Kembali",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Masukkan Username dan Password Yang terdaftar",
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 15, left: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text(
                                        "Nama",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                              padding: EdgeInsets.only(left: 15, right: 15),
                              child: TextField(
                                // autofocus: true,
                                keyboardType: TextInputType.name,
                                textCapitalization: TextCapitalization.words,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(
                                    Icons.person,
                                  ),
                                  hintText: "Masukkan Nama Anda",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                top: 20,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text("Password")],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                left: 15,
                                right: 15,
                              ),
                              child: TextField(
                                autofocus: false,
                                enableInteractiveSelection: true,
                                obscureText: true,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.password),
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                    hintText: "Masukkan Password Anda",
                                    hintStyle: TextStyle(
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text("Sebagai"),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              // height: 50,
                              height: lastbody * 0.15,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    // width: ,
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: 0,
                                          onChanged: null,
                                        ),
                                        Text("Admin")
                                      ],
                                    ),
                                  ),
                                  Container(
                                      // width: 100,
                                      child: Row(
                                    children: [
                                      Container(
                                        child: Radio(
                                          value: 2,
                                          groupValue: 0,
                                          onChanged: null,
                                        ),
                                      ),
                                      Container(
                                        child: Text("Pemilik"),
                                      )
                                    ],
                                  )),
                                  Container(
                                    // width: 100,
                                    child: Row(
                                      children: [
                                        Container(
                                            child: Radio(
                                          value: 3,
                                          groupValue: 0,
                                          onChanged: null,
                                        )),
                                        Text("Penyewa")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        backgroundColor: Colors.blue,
                                      ),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                        ),
                                        backgroundColor: Colors.blue,
                                      ),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                register.nameroute);
                                      },
                                      child: Text(
                                        "Register",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                landingpage.nameroute);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        backgroundColor: Colors.red,
                                      ),
                                      child: Text("Cancel",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                :
                //     Portrait
                Container(
                    width: bodywidht * 0.9,
                    height: lastbody * 0.5,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Selamat Datang Kembali",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "Masukkan Username dan Password Yang terdaftar",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(top: 15, left: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Text(
                                      "Nama",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: bodywidht * 0.04),
                            child: TextField(
                              // autofocus: true,
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.person,
                                ),
                                hintText: "Masukkan Nama Anda",
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 15,
                              top: 20,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text("Password")],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: bodywidht * 0.04),
                            child: TextField(
                              autofocus: false,
                              enableInteractiveSelection: true,
                              obscureText: true,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  hintText: "Masukkan Password Anda",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 15),
                                  child: Text("Sebagai"),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(left: bodywidht * 0.01),
                                  // width: ,
                                  child: Row(
                                    children: [
                                      Radio(
                                        value: 1,
                                        groupValue: 0,
                                        onChanged: null,
                                      ),
                                      Text("Admin")
                                    ],
                                  ),
                                ),
                                Container(
                                    // padding: EdgeInsets.only(left: bodywidht * 0.001),
                                    // width: 100,
                                    child: Row(
                                  children: [
                                    Container(
                                      child: Radio(
                                        value: 2,
                                        groupValue: 0,
                                        onChanged: null,
                                      ),
                                    ),
                                    Container(
                                      child: Text("Pemilik"),
                                    )
                                  ],
                                )),
                                Container(
                                  // padding: EdgeInsets.only(left: bodywidht * 0.01),
                                  // width: 100,
                                  child: Row(children: [
                                    Radio(
                                      value: 3,
                                      groupValue: 0,
                                      onChanged: null,
                                    ),
                                    Text("Penyewa")
                                  ]),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            // width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(left: bodywidht * 0.02),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text(
                                      "Login",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.only(left: bodywidht * 0.02),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15)),
                                      ),
                                      backgroundColor: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              register.nameroute);
                                    },
                                    child: Text(
                                      "Register",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  // padding: EdgeInsets.only(left: bodywidht * 0.02),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushReplacementNamed(
                                              landingpage.nameroute);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      backgroundColor: Colors.red,
                                    ),
                                    child: Text("Cancel",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )))),
      ),
    );
  }
}
