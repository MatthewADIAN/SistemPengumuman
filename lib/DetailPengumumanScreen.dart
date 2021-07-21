import 'package:flutter/material.dart';
import 'package:sistem_pengumuman/model/PengumumanData.dart';
import 'package:sistem_pengumuman/LoginScreen.dart';

class DetailScreen extends StatelessWidget {
  final PengumumanData pengumuman;

  DetailScreen({required this.pengumuman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '0EB7ED'.toColor(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20.0),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 40.0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible(
                        child: Image.asset(
                          pengumuman.imageAsset,
                          width: 200,
                          height: 200,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                pengumuman.judulDetail,
                                style: TextStyle(),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                pengumuman.isi,
                                style: TextStyle(
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
