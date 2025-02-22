import 'package:flutter/material.dart';
import 'package:cari_kost/models/kost.dart';
import 'package:faker/faker.dart' as faker;
import 'dart:math';

class Datakost with ChangeNotifier {
  final List<kost> _detailkost = List.generate(20, (Index) {
    return kost(
      idkost: 1 + Random().nextInt(20),
      iduser: 1 + Random().nextInt(100),
      namakost: faker.faker.internet.userName(),
      alamatkost: faker.faker.internet.ipv6Address(),
      gambarkost: "https://picsum.photos/id/$Index/1080/730",
      hpkost: faker.faker.phoneNumber.hashCode,
      jumlahkamar: 10 + Random().nextInt(50),
      hargakamar: 500000 + Random().nextInt(1000000000),
    );
  });

  List<kost> get detailkost {
    return [..._detailkost];
  }
}
