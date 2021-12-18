import 'dart:io';

import 'package:flutter/material.dart';
import 'package:frongeasyshop/widgets/show_form.dart';
import 'package:frongeasyshop/widgets/show_process.dart';
import 'package:geolocator/geolocator.dart';

class InsertProfileShop extends StatefulWidget {
  const InsertProfileShop({Key? key}) : super(key: key);

  @override
  _InsertProfileShopState createState() => _InsertProfileShopState();
}

class _InsertProfileShopState extends State<InsertProfileShop> {
  final formKey = GlobalKey<FormState>();
  String? name, address, phone;
  double? lat, lng;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findLatLng();
  }

  Future<void> findLatLng() async {
    LocationPermission locationPermission;

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.deniedForever) {
        exit(0);
      }
    }

    Position? position = await findPosition();
    if (position != null) {
      setState(() {
        lat = position.latitude;
        lng = position.longitude;
        print('$lat, $lng');
      });
    }
  }

  Future<Position?> findPosition() async {
    try {
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เพิ่มข้อมูล ร้านค้า'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(
          FocusScopeNode(),
        ),
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                ShowForm(
                  title: 'ชื่อร้าน :',
                  myValidate: nameValidate,
                  mySave: nameSave,
                ),
                ShowForm(
                  title: 'ที่อยู่ :',
                  myValidate: addressValidate,
                  mySave: addressSave,
                ),
                ShowForm(
                  title: 'เบอร์โทรศัพย์ :',
                  myValidate: phoneValidate,
                  mySave: phoneSave,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  width: 300,
                  height: 200,
                  child: lat == null ? const ShowProcess() : Text('$lat, $lng'),
                ),
                buttonSave(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void nameSave(String? string) {
    print('strint name =>> $string');
    name = string;
  }

  void addressSave(String? string) {
    address = string;
  }

  void phoneSave(String? string) {
    phone = string;
  }

  String? nameValidate(String? string) {
    if (string!.isEmpty) {
      return 'กรุณากรอกชื่อร้าน ด้วยคะ';
    } else {
      return null;
    }
  }

  String? addressValidate(String? string) {
    if (string!.isEmpty) {
      return 'กรุณากรอก ที่อยู่ร้าน ด้วยคะ';
    } else {
      return null;
    }
  }

  String? phoneValidate(String? string) {
    if (string!.isEmpty) {
      return 'กรุณากรอก เบอร์โทร ด้วยคะ';
    } else {
      return null;
    }
  }

  Container buttonSave() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            formKey.currentState!.save();
            print('name = $name, address = $address, phone = $phone');
          }
        },
        child: Text('Save'),
      ),
    );
  }
}
