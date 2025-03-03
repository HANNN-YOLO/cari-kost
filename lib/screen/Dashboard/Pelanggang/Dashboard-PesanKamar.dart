import 'dart:ffi';

import 'package:cari_kost/landingpage.dart';
import 'package:flutter/material.dart';

class pesankamar extends StatelessWidget {
  static const nameroute = 'pesan-kamar';
  @override
  Widget build(BuildContext context) {
    final ini = DateTime.now();
    final bodywidth = MediaQuery.of(context).size.width;
    final bodyheight = MediaQuery.of(context).size.height;
    final batas = MediaQuery.of(context).padding.top;

    final AppBar judul = AppBar(
      backgroundColor: Colors.blue,
      title: Text(
        "Ambil Kamar",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Container(
          child: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu))),
        )
      ],
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
    );

    final lastbody = bodyheight - batas - judul.preferredSize.height;
    return Scaffold(
      appBar: judul,
      drawer: Drawer(
        width: bodywidth * 0.55,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: batas),
              height: judul.preferredSize.height * 1.45,
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
                  "Ambil Kamar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: bodywidth * 0.04),
              child: ListTile(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(landingpage.nameroute);
                },
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Container(
            height: lastbody * 0.8,
            width: bodywidth * 0.9,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: batas * 0.5,
                    left: bodywidth * 0.3,
                  ),
                  child: Text("Form Pesanan Kost"),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: bodywidth * 0.05),
                  child: Text("Nama Kost"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: bodywidth * 0.04),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Nama Kost",
                      prefixIcon: Icon(Icons.home),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: bodywidth * 0.05),
                  child: Text("Nama Pemilik Kost"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: bodywidth * 0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Nama Pemilik Kost",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: bodywidth * 0.05),
                  child: Text("Nama Penyewa"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: bodywidth * 0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Nama Penyewa",
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Text("tanggal Mulai"),
                            ),
                            Container(
                                child: OutlinedButton(
                                    onPressed: () {
                                      showDatePicker(
                                        context: context,
                                        firstDate: DateTime(1),
                                        lastDate: DateTime(3000),
                                        // initialDate: ini,
                                      );
                                    },
                                    child: Text("Pilih Tanggal")))
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              child: Text("Tanggal Berakhir"),
                            ),
                            Container(
                              child: OutlinedButton(
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1),
                                    lastDate: DateTime(3000),
                                  );
                                },
                                child: Text("Pilih Tanggal"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                  )
                                ),
                          onPressed: () {},
                          child: Text(
                            "Ambil Kamar",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )
                              ),
                            onPressed: () {},
                            child: Text(
                              "batal",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
