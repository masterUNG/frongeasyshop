import 'package:flutter/material.dart';
import 'package:frongeasyshop/utility/my_constant.dart';
import 'package:frongeasyshop/widgets/show_logo.dart';
import 'package:frongeasyshop/widgets/show_text.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: MyConstant().gradianBox(),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                buildLogo(),
                buildUser(),
                buildPassword(),
                buildLogin(),
                buildAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextButton buildAccount() => TextButton(
        onPressed: () =>
            Navigator.pushNamed(context, MyConstant.routCreateAccount),
        child: Text('สร้างบัญชีใหม่'),
      );

  Container buildLogin() {
    return Container(
      width: 250,
      child: ElevatedButton(
        style: MyConstant().myButtonStyle(),
        onPressed: () {},
        child: Text('เข้าสู่ระบบ'),
      ),
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 250,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity),
          label: ShowText(
            title: 'บัญชีผู้ใช้งาน :',
            textStyle: MyConstant().h2Style(),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 250,
      child: TextFormField(obscureText: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          label: ShowText(
            title: 'รหัสผ่าน :',
            textStyle: MyConstant().h2Style(),
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildLogo() {
    return Container(
      width: 150,
      child: ShowLogo(),
    );
  }
}
