import 'package:flutter/material.dart';
import 'package:frongeasyshop/utility/my_constant.dart';
//import 'package:frongeasyshop/widgets/show_signout.dart';

class EditShopProFile extends StatefulWidget {
  const EditShopProFile({Key? key}) : super(key: key);

  @override
  _EditShopProFileState createState() => _EditShopProFileState();
}

class _EditShopProFileState extends State<EditShopProFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primart,
        title: const Text('แก้ไขข้อมูลร้านค้า'),
      ),
    );
  }
}
