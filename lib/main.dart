import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:frongeasyshop/states/authen.dart';
import 'package:frongeasyshop/states/create_account.dart';
import 'package:frongeasyshop/states/service_buyer.dart';
import 'package:frongeasyshop/states/service_shopper.dart';
import 'package:frongeasyshop/utility/my_constant.dart';

Map<String, WidgetBuilder> map = {
  MyConstant.routAuthen: (BuildContext context) => const Authen(),
  MyConstant.routCreateAccount: (BuildContext context) => const CreateAccount(),
  MyConstant.routServiceBuyer: (BuildContext context) => const ServiceBuyer(),
  MyConstant.routServiceShopper: (BuildContext context) =>
      const ServiceShopper()
};

String? firstState;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) {
    print('initial Success');
    firstState = MyConstant.routAuthen;
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstState,
    );
  }
}
