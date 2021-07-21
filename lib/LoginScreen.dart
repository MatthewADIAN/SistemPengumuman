import 'package:flutter/material.dart';
import 'package:sistem_pengumuman/LandingScreen.dart';

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _nama = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 50.0, right: 50.0, top: 100.0),
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'images/logo.png',
                      width: 200,
                      height: 200,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _nama = value!;
                        });
                      },
                    ),
                    SizedBox(height: 30),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password', border: OutlineInputBorder()),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      onChanged: (String? value) {
                        setState(() {
                          _password = value!;
                        });
                      },
                    ),
                    SizedBox(height: 50),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(width: 150, height: 62),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LandingScreen(
                                nama: _nama, password: _password);
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('Login'),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(17.85),
                          ),
                          primary: 'EDFF12'.toColor(),
                          onPrimary: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'images/bgbawah.png',
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
