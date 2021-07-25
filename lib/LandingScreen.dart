import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_pengumuman/model/PengumumanData.dart';
import 'package:sistem_pengumuman/DetailPengumumanScreen.dart';
import 'package:sistem_pengumuman/LoginScreen.dart';

class LandingScreen extends StatelessWidget {
  final String nama;
  final String password;

  LandingScreen({required this.nama, required this.password});

  var styleMenu = TextStyle(
    fontFamily: 'ReemKufi',
    fontSize: 13.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '0EB7ED'.toColor(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Center(
                  child: Text(
                    'Hi, ($nama)',
                    style: TextStyle(
                      fontFamily: 'ReemKufi',
                      fontWeight: FontWeight.bold,
                      fontSize: 28.68,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19.12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 3,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/daftar.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Text(
                                    'Daftar Matkul',
                                    style: styleMenu,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/absen.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Text(
                                    'Jadwal & Absen',
                                    style: styleMenu,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/magang.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Text(
                                    'Daftar KP/TA',
                                    style: styleMenu,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/lapor.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Text(
                                    'Pengaduan',
                                    style: styleMenu,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/upload.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Text(
                                    'Upload',
                                    style: styleMenu,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset(
                                    'images/score.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Text(
                                    'Score',
                                    style: styleMenu,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Pengumuman',
                  style: TextStyle(
                    fontFamily: 'ReemKufi',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.86,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 400, minHeight: 200.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final PengumumanData pengumuman = pengumumanList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return DetailScreen(
                                  pengumuman: pengumuman,
                                );
                              }));
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              top: 20.0,
                              bottom: 40.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  pengumuman.header,
                                  style: TextStyle(
                                    fontFamily: 'ReemKufi',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 31.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  pengumuman.singkat,
                                  style: TextStyle(
                                    fontFamily: 'ReemKufi',
                                    fontSize: 13.5,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      'Read more',
                                      style: TextStyle(
                                        fontFamily: 'ReemKufi',
                                        fontSize: 14.85,
                                        color: '0EB7ED'.toColor(),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: pengumumanList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
