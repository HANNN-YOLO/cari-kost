import 'package:cari_kost/landingpage.dart';
import 'package:flutter/material.dart';
import 'package:cari_kost/screen/Dashboard/Pelanggang/dashboardPenyewa.dart';
import 'package:cari_kost/provider/datakost.dart';
import 'package:provider/provider.dart';

class dashboard_detailkost extends StatelessWidget {
  static const nameroute = 'penyewa-detailkost';

  const dashboard_detailkost({super.key});
  @override
  Widget build(BuildContext context) {
    final penyewaDetailkost = int.parse( ModalRoute.of(context)?.settings.arguments as String);
    final mydata= Provider.of<Datakost>(context).detailkost.firstWhere((dat) => dat.idkost == penyewaDetailkost);

    final bodywidth = MediaQuery.of(context).size.width;
    final bodyheight = MediaQuery.of(context).size.height;
    final batas = MediaQuery.of(context).padding.top;

    final AppBar judul = AppBar(
      leading: Container(
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage("images/door.png"),
                fit: BoxFit.cover,
                alignment: Alignment.center)),
      ),
      backgroundColor: Colors.blue,
      title: Text(
        "Detail Kost ke $penyewaDetailkost",
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
                  )),
        ),
      ],
    );

    final lastbody = bodyheight - batas - judul.preferredSize.height;

    final datakost = Provider.of<Datakost>(context);
    final kostdata = datakost.detailkost;

    return Scaffold(
      appBar: judul,
      drawer: Drawer(
        width: bodywidth * 0.5,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: batas),
              color: Colors.blue,
              height: judul.preferredSize.height * 1.48,
              child: ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
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
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: bodywidth * 0.02),
              height: lastbody * 0.1,
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
        child: GridTile(
          child: Image.network(mydata.gambarkost,
          height: lastbody * 0.5,
          width: bodywidth,
          ),
        ),
      ),
    );
  }
}
