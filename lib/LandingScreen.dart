import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sistem_pengumuman/model/PengumumanData.dart';
import 'package:sistem_pengumuman/DetailPengumumanScreen.dart';
import 'package:sistem_pengumuman/LoginScreen.dart';

class LandingScreen extends StatelessWidget {
  final String nama;
  final String password;

  LandingScreen({required this.nama, required this.password});

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
                  child: Text('Hi, $nama'),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10),
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
                                  Text('Daftar Matkul')
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
                                  Text('Jadwal & Absen')
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
                                  Text('Daftar KP/TA')
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
                                  Text('Pengaduan')
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
                                  Text('Upload')
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
                                  Text('Score')
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
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Text('Pengumuman'),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50.0),
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
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(pengumuman.header),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(pengumuman.singkat),
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
