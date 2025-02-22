import 'package:cari_kost/landingpage.dart';
import 'package:cari_kost/screen/auth/login.dart';
import 'package:flutter/material.dart';

class register extends StatelessWidget {
  static const nameroute = '/register';
  @override
  Widget build(BuildContext context) {
    final bodywidth = MediaQuery.of(context).size.width;
    final bodyheight = MediaQuery.of(context).size.height;
    final batas = MediaQuery.of(context).padding.top;

    final AppBar judul = AppBar(
      backgroundColor: Colors.blue,
      leading: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage("images/door.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
      ),
      title: Container(
        child: Text(
          "Cari Kost",
          style: TextStyle(color: Colors.white),
        ),
      ),
      actions: [
        Container(
          padding: EdgeInsets.only(right: 10),
          child: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu))),
        )
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
                        title: Container(
                          child: Text(
                            "Cari Kost",
                            style: TextStyle(color: Colors.white),
                          ),
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
                          Navigator.of(context)
                              .pushReplacementNamed(login.nameroute);
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
                          Navigator.of(context).pop();
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
                        title: Container(
                          child: Text(
                            "Cari Kost",
                            style: TextStyle(color: Colors.white),
                          ),
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
                          Navigator.of(context)
                              .pushReplacementNamed(login.nameroute);
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
                          Navigator.of(context).pop();
                        },
                        leading: Icon(Icons.people),
                        title: Text("Register"),
                      ),
                    )
                  ],
                ))),
      body: Container(
        child: Center(
            child: (manjang
                ?
                //     Landscape
                Container(
                    width: bodywidth * 0.5,
                    height: lastbody * 1.50,
                    color: Colors.white,
                    child: SingleChildScrollView(
                        child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Buat Akun Baru",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Masukkan Nama, Email, Password dan Role",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 15,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                  hintText: "Masukkan Nama Anda",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: TextField(
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Masukkan Email Anda",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Password",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: TextField(
                              obscureText: true,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  hintText: "Masukkan Password Anda",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sebagai"),
                                ],
                              )),
                          Container(
                              width: double.infinity,
                              height: 50,
                              // color: Colors.red,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                   Container(
                                    // padding: EdgeInsets.only(left: 30),
                                    // color: Colors.cyanAccent,
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: 0,
                                          onChanged: null,
                                        ),
                                        Text("Pemilik")
                                      ],
                                    ),
                                  ),
                                  // ),
                                  Container(
                                    // padding: EdgeInsets.only(left: 10),
                                    // color: Colors.blue,
                                    child: Row(
                                      children: [
                                        Radio(
                                            value: 2,
                                            groupValue: 0,
                                            onChanged: null),
                                        Text("Penyewa")
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            // padding: EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(left: 8),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                login.nameroute);
                                      },
                                      child: Text(
                                        "Create",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                Container(
                                  // padding: EdgeInsets.only(left: 80),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                login.nameroute);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                  )
                :
                //     Portrait
                Container(
                    width: bodywidth * 0.85,
                    // width: 350,
                    height: lastbody * 0.65,
                    // height: 500,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "Buat Akun Baru",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Masukkan Nama, Email, Password dan Role",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(
                                top: 20,
                                left: 15,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: TextField(
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.person),
                                  hintText: "Masukkan Nama Anda",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Email",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: TextField(
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.email),
                                  hintText: "Masukkan Email Anda",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Password",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: TextField(
                              obscureText: true,
                              enableInteractiveSelection: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  prefixIcon: Icon(Icons.password),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                  hintText: "Masukkan Password Anda",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sebagai"),
                                ],
                              )),
                          Container(
                              width: double.infinity,
                              height: 50,
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Row(
                                      children: [
                                        Radio(
                                          value: 1,
                                          groupValue: 0,
                                          onChanged: null,
                                        ),
                                        Text("Pemilik")
                                      ],
                                    ),
                                  )),
                                  Expanded(
                                      child: Container(
                                    // color: Colors.blue,
                                    child: Row(
                                      children: [
                                        Radio(
                                            value: 2,
                                            groupValue: 0,
                                            onChanged: null),
                                        Text("Penyewa")
                                      ],
                                    ),
                                  ))
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            // padding: EdgeInsets.only(left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(left: 10),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                login.nameroute);
                                      },
                                      child: Text(
                                        "Create",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                ),
                                Container(
                                  // padding: EdgeInsets.only(left: 80),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.red,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                login.nameroute);
                                      },
                                      child: Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.white),
                                      )),
                                )
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
