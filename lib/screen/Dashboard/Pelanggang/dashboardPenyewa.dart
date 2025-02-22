import 'package:cari_kost/landingpage.dart';
import 'package:cari_kost/provider/datakost.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cari_kost/models/kost.dart';
import 'dart:math';
import 'package:faker/faker.dart' as faker;
import 'package:cari_kost/screen/Dashboard/Pelanggang/dashboard-detailkost.dart';
import 'package:provider/provider.dart';

class dashboardpenyewa extends StatelessWidget {
  static const nameroute = "/dashboardpenyewa";

  const dashboardpenyewa({super.key});
  @override
  Widget build(BuildContext context) {
    final bodyweight = MediaQuery.of(context).size.width;
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
                alignment: Alignment.center)),
      ),
      title: Text(
        "Dashboard",
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Container(
            child: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ))
      ],
    );

    final lastbody = bodyheight - batas - judul.preferredSize.height;

    // final List<Color> mycolor = [
    //   Colors.purple, Colors.white, Colors.red, Colors.cyan, Colors.amber,
    //   Colors.white, Colors.purple, Colors.amber, Colors.red, Colors.cyan,
    //   Colors.purple, Colors.white, Colors.red, Colors.cyan, Colors.amber,
    //   Colors.white, Colors.purple, Colors.amber, Colors.red, Colors.cyan,
    // ];

    // final List<kost> kostdata = List.generate(20, (Index) {
    //   return kost(
    //     idkost: 1 + Random().nextInt(20),
    //     iduser: 1 + Random().nextInt(100),
    //     namakost: faker.faker.internet.userName(),
    //     alamatkost: faker.faker.internet.ipv6Address(),
    //     gambarkost: "https://picsum.photos/id/$Index/1080/730",
    //     hpkost: faker.faker.phoneNumber.hashCode,
    //     jumlahkamar: 10 + Random().nextInt(50),
    //     hargakamar: 500000 + Random().nextInt(1000000000),
    //   );
    // });

    final datakost = Provider.of<Datakost>(context);
    final kostdata = datakost.detailkost;

    return Scaffold(
        appBar: judul,
        drawer: Drawer(
          width: bodyweight * 0.5,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: batas),
                height: judul.preferredSize.height * 1.5,
                color: Colors.blue,
                child: ListTile(
                  leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            image: AssetImage("images/door.png"))),
                  ),
                  title: Text(
                    "Penyewa",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
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
        body: SizedBox(
            width: bodyweight,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: batas * 0.5),
                    height: lastbody * 0.15,
                    child: Row(
                      children: [
                        Flexible(
                            child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Daftar Kost",
                            style: TextStyle(fontSize: 15),
                          ),
                        )),
                        Flexible(
                            flex: 2,
                            child: Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: TextField(
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Cari",
                                          hintStyle:
                                              TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      child: Container(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              backgroundColor: Colors.blue),
                                          onPressed: () {},
                                          child: Text(
                                            "Cari",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: lastbody * 0.8,
                    color: Colors.grey,
                    child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          height: lastbody * 0.6,
                          width: bodyweight * 0.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: GridTile(
                              footer: GridTileBar(
                                backgroundColor: Colors.cyan,
                                title: Column(
                                  children: [
                                    Text(kostdata[index].namakost),
                                    Text(kostdata[index].alamatkost),
                                    Text(kostdata[index].hpkost.toString()),
                                  ],
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    dashboard_detailkost.nameroute,
                                    arguments:
                                        kostdata[index].idkost.toString(),
                                  );
                                },
                                child: Image.network(
                                  kostdata[index].gambarkost,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )));
  }
}
