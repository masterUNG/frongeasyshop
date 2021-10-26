import 'package:flutter/material.dart';
import 'package:frongeasyshop/utility/my_constant.dart';
import 'package:frongeasyshop/widgets/show_signout.dart';

class ServiceBuyer extends StatefulWidget {
  const ServiceBuyer({Key? key}) : super(key: key);

  @override
  _ServiceBuyerState createState() => _ServiceBuyerState();
}

class _ServiceBuyerState extends State<ServiceBuyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [ShowSignOut()],
        backgroundColor: MyConstant.primart,
        title: const Text('ส่วนของลูกค้า'),
      ),
    );
  }
}
