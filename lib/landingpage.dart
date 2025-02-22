import 'package:cari_kost/screen/auth/login.dart';
import 'package:cari_kost/screen/auth/register,dart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:cari_kost/screen/Dashboard/Pelanggang/dashboardPenyewa.dart';

class landingpage extends StatelessWidget {
  static const nameroute = "/landingpage";
  @override
  Widget build(BuildContext context) {
    final bodyheight = MediaQuery.of(context).size.height;
    final bodywidth = MediaQuery.of(context).size.width;
    final batas = MediaQuery.of(context).padding.top;

    final AppBar judul = AppBar(
      backgroundColor: Colors.blue,
      leading: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: AssetImage("images/door.png"),
              fit: BoxFit.cover,
              alignment: Alignment.center),
        ),
      ),
      title: Container(
        child: Text(
          "Cari Kost",
          style: TextStyle(
            color: Colors.white,
          ),
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
                    icon: Icon(Icons.menu),
                  )),
        )
      ],
    );

    final lastbody = bodyheight - batas - judul.preferredSize.height;
    final manjang = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      appBar: judul,
      drawer: Drawer(
        width: 200,
        child: (manjang ?
        //     Landscape
        Column(
          children: [
            Container(
              width: double.infinity,
              height: judul.preferredSize.height * 1.43,
              color: Colors.blue,
              padding: EdgeInsets.only(top: 29),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("images/door.png"),
                        fit: BoxFit.contain,
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
                  Navigator.of(context).pop();
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
                  Navigator.of(context).pushReplacementNamed(login.nameroute);
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
                  Navigator.of(context).pushNamed(register.nameroute);
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
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: judul.preferredSize.height * 1.50,
              color: Colors.blue,
              padding: EdgeInsets.only(top: 29),
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage("images/door.png"),
                        fit: BoxFit.contain,
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
                  Navigator.of(context).pop();
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
                  Navigator.of(context).pushReplacementNamed(login.nameroute);
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
                  Navigator.of(context).pushReplacementNamed(register.nameroute);
                },
                leading: Icon(Icons.people),
                title: Text("Register"),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: ListTile(
                onTap: (){
                  Navigator.of(context).pushNamed(dashboardpenyewa.nameroute);
                },
                leading:  Icon(Icons.person_3),
                title: Text("Dashboard Penyewa"),
              ),
            )
          ],
        )
        )
      ),

      body: Container(
        child: (manjang ?
        //     Landscape
        ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: bodywidth,
                  height: lastbody * 1.13,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            LayoutBuilder(
                              builder: (context, constrait) {
                                return Container(
                                  width: constrait.maxWidth * 0.7,
                                  child: Text(
                                    "Selamat Datang di Cari Kost! Kami hadir untuk membantu Anda menemukan kost impian dengan mudah dan cepat. Jelajahi berbagai pilihan kost yang nyaman dan sesuai dengan kebutuhan Anda. Dengan tampilan sederhana dan informasi lengkap, kami berkomitmen memberikan pengalaman terbaik dalam mencari tempat tinggal",
                                    // textAlign: TextAlign.justify,
                                  )
                                );
                              }
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(login.nameroute);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue),
                                  child: Container(
                                    // padding: EdgeInsets.only(top: 10),
                                    // height: 10,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Cari Kost Impian Anda",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: lastbody * 0.7,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "images/Kost-removebg-preview.png"),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.center,
                                    )),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.white),
                Container(
                  padding: EdgeInsets.all(10),
                  height: lastbody * 1.5,
                  width: bodywidth,
                  color: Colors.white,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                            padding: EdgeInsets.only(top: 20, left: 60),
                            height: lastbody * 1,
                            // width: bodywidth * 0.5,
                            child: Text(
                                "Cari Kost adalah platform pencarian kost yang dirancang untuk mempermudah Anda menemukan tempat tinggal ideal. Kami menyediakan informasi lengkap mengenai berbagai jenis kost, mulai dari fasilitas, harga, hingga lokasi strategis.",
                              // textAlign: TextAlign.center,
                            ),
                          )
                      ),
                      Expanded(
                          child: FittedBox(
                            child: Image.asset("images/download__1_-removebg-preview.png")
                          ),
                      )
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.white),
                Container(
                  padding: EdgeInsets.all(10),
                  height: lastbody * 1,
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      width: bodywidth * 5,
                      height: lastbody * 5,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.blue,
                            child: Text(
                              "Contact Me",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                              height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Tab(
                                    icon: Icon(Icons.person),
                                  ),
                                  Text("Reyhan Rafaidhil")
                                ],
                              )),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tab(
                                  icon: Icon(Icons.phone),
                                ),
                                Text("0895803788440")
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tab(
                                  icon: Icon(Icons.mail),
                                ),
                                Text("reyhanrafaidhil1126@gmail.com")
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text("Reyhan Rafaidhil")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
            :
        //     Portrait
        ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  width: bodywidth,
                  height: lastbody * 0.45,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                "Selamat Datang di Cari Kost! Kami hadir untuk membantu Anda menemukan kost impian dengan mudah dan cepat. Jelajahi berbagai pilihan kost yang nyaman dan sesuai dengan kebutuhan Anda. Dengan tampilan sederhana dan informasi lengkap, kami berkomitmen memberikan pengalaman terbaik dalam mencari tempat tinggal",
                                // maxLines: 10,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacementNamed(login.nameroute);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue),
                                  child: Container(
                                    // padding: EdgeInsets.only(top: 10),
                                    // height: 10,
                                    // color: Colors.blue,
                                    child: Text(
                                      "Cari Kost Impian Anda",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: lastbody * 0.3,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "images/Kost-removebg-preview.png"),
                                      fit: BoxFit.contain,
                                      alignment: Alignment.center,
                                    )),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.white),
                Container(
                  padding: EdgeInsets.all(10),
                  height: lastbody * 0.45,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                            height: lastbody * 0.35,
                            child: Text(
                                "Cari Kost adalah platform pencarian kost yang dirancang untuk mempermudah Anda menemukan tempat tinggal ideal. Kami menyediakan informasi lengkap mengenai berbagai jenis kost, mulai dari fasilitas, harga, hingga lokasi strategis."),
                          )),
                      Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage(
                                      "images/download__1_-removebg-preview.png"),
                                  fit: BoxFit.fill,
                                  alignment: Alignment.center,
                                )),
                          ))
                    ],
                  ),
                ),
                Divider(height: 1, color: Colors.white),
                Container(
                  padding: EdgeInsets.all(10),
                  height: lastbody * 0.4,
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      width: bodywidth * 0.8,
                      height: lastbody * 0.5,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            color: Colors.blue,
                            child: Text(
                              "Contact Me",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Expanded(
                              // height: 50,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Tab(
                                    icon: Icon(Icons.person),
                                  ),
                                  Text("Reyhan Rafaidhil")
                                ],
                              )),
                          Expanded(
                            // height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tab(
                                  icon: Icon(Icons.phone),
                                ),
                                Text("0895803788440")
                              ],
                            ),
                          ),
                          Expanded(
                            // height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tab(
                                  icon: Icon(Icons.mail),
                                ),
                                Text("reyhanrafaidhil1126@gmail.com")
                              ],
                            ),
                          ),
                          Expanded(
                            // height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Text("Reyhan Rafaidhil")
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        )
        )
      ),
    );
  }
}
