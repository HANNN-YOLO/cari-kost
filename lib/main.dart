import 'package:cari_kost/screen/Dashboard/Pelanggang/dashboard-detailkost.dart';
import 'package:flutter/material.dart';
import './landingpage.dart';
import 'package:cari_kost/screen/auth/login.dart';
import 'package:cari_kost/screen/auth/register,dart.dart';
import 'package:cari_kost/screen/Dashboard/Pelanggang/dashboardPenyewa.dart';
import 'package:cari_kost/screen/Dashboard/Pelanggang/dashboard-detailkost.dart';

void main() {
  runApp(kost());
}

class kost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: landingpage(),
        routes: {
          landingpage.nameroute: (context) => landingpage(),
          login.nameroute: (context) => login(),
          register.nameroute: (context) => register(),
          dashboardpenyewa.nameroute: (context) => dashboardpenyewa(),
          // dashboard_detailkost.nameroute: (context) => dashboard_detailkost(),
          dashboard_detailkost.nameroute: (context) => dashboard_detailkost(),
        },
      theme: ThemeData(
        visualDensity: VisualDensity.comfortable,
      ),
    );
  }
}
