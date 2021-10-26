import 'package:flutter/material.dart';
class EditShopProFile extends StatefulWidget {
  const EditShopProFile({ Key? key }) : super(key: key);

  @override
  _EditShopProFileState createState() => _EditShopProFileState();
}

class _EditShopProFileState extends State<EditShopProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('แก้ไขข้อมูลร้านค้า'),),
    );
  }
}