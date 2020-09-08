import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/colors.dart';
import 'package:indonesia/indonesia.dart';
import 'package:youtube/pages/classForm.dart';
import 'package:youtube/pages/form.dart';

class Pagethree extends StatefulWidget {
  @override
  _PagethreeState createState() => _PagethreeState();
}

class _PagethreeState extends State<Pagethree> {
  bool _isLoading = false;
  int _current = 0;
  String title = '';
  String views = '';
  String deskripsi = '';
  String harga = '';
  String kode_produk = '';

  List listDetail;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  final items = List<String>.generate(10000, (i) => "Item $i");

  Future<Null> _getData() async {
    setState(() {
      if (_current == 0) {
        title = 'Ekonomi';
        kode_produk = 'jam_tayang1';
        harga = '599000';
        views = '';
        deskripsi = '50 Jam Tayang';
        listDetail = [
          'Mendapatkan View Minimal : 6,000 View',
          'Mendapatkan LIKE : YES',
          'Mendapatkan SUBSCRIBER: YES',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 1) {
        title = 'Standart';
        kode_produk = 'jam_tayang2';
        harga = '2800000';
        views = '';
        deskripsi = '250 Jam Tayang';
        listDetail = [
          'Mendapatkan View Minimal : 30,000 View',
          'Mendapatkan LIKE : YES',
          'Mendapatkan SUBSCRIBER: YES',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 2) {
        title = 'Pro';
        kode_produk = 'jam_tayang3';
        harga = '5500000';
        views = '';
        deskripsi = '500 Jam Tayang';
        listDetail = [
          'Mendapatkan View Minimal : 60,000 View',
          'Mendapatkan LIKE : YES',
          'Mendapatkan SUBSCRIBER: YES',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 3) {
        title = 'Vip 1';
        kode_produk = 'jam_tayang4';
        harga = '8600000';
        views = '';
        deskripsi = '1.000 Jam Tayang';
        listDetail = [
          'Mendapatkan View Minimal : 120,000 View',
          'Mendapatkan LIKE : YES',
          'Mendapatkan SUBSCRIBER: YES',
        ];
      } else if (_current == 4) {
        title = 'Vip 2';
        kode_produk = 'jam_tayang5';
        harga = '13600000';
        views = '';
        deskripsi = '2.000 Jam Tayang';
        listDetail = [
          'Mendapatkan View Minimal : 240,000 View',
          'Mendapatkan LIKE : YES',
          'Mendapatkan SUBSCRIBER: YES',
        ];
      } else if (_current == 5) {
        title = 'Vip 3';
        kode_produk = 'jam_tayang6';
        harga = '25000000';
        views = '';
        deskripsi = '4.000 Jam Tayang';
        listDetail = [
          'Mendapatkan View Minimal : 400,000 View',
          'Mendapatkan LIKE : YES',
          'Mendapatkan SUBSCRIBER: YES',
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> list = [0, 1, 2, 3, 4, 5];
    return Scaffold(
      backgroundColor: WhiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                  // autoPlay: true,
                  enlargeCenterPage: true,
                  height: 290.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                      _getData();
                    });
                  }),
              items: list
                  .map((item) => Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 30.0, bottom: 20.0, left: 0.0, right: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0)),
                              image: DecorationImage(
                                image: AssetImage(
                                  "images/bg-header.png",
                                ),
                                // fit: BoxFit.cover,
                                alignment: new Alignment(1.0, 1.0),
                              ),
                              color: PrimaryColor,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 30.0),
                            // color: Color(0XFFffc4c4),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      // list2[item].toString(),
                                      title,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        // list2[item].toString(),
                                        rupiah(harga),
                                        style: TextStyle(
                                            fontSize: 30, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      views + '\n',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        child: new Text(
                                          deskripsi,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    // Text(
                                    //   deskripsi,
                                    //   textAlign: TextAlign.center,
                                    //   style: TextStyle(
                                    //       fontSize: 15, color: Colors.white),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                        // color: Colors.green,
                      ))
                  .toList(),
            ),
            ListView.builder(
                //MEMBUAT LISTVIEW
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listDetail
                    .length, //KETIKA DATANYA KOSONG KITA ISI DENGAN 0 DAN APABILA ADA MAKA KITA COUNT JUMLAH DATA YANG ADA
                itemBuilder: (BuildContext context, int jml) {
                  return listDetail[jml] == 0
                      ? ''
                      : Padding(
                          padding: const EdgeInsets.only(
                              top: 0.0, left: 10.0, right: 10.0, bottom: 0.0),
                          child: Column(
                            children: <Widget>[
                              Card(
                                  child: Column(
                                      // mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                    ListTile(
                                        // leading: Icon(Icons.album),
                                        title: Text(
                                      listDetail[jml],
                                      // listDetail[0],
                                      // "$listDetail[0]".toString(),
                                      style: TextStyle(
                                        color: Color(0XFFaaaaaa),
                                      ),
                                    )
                                        // subtitle: Text('Mendapatkan View: 2,000 - 2,400 View'),
                                        ),
                                  ])),
                              jml != listDetail.length - 1
                                  ? Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10.0))
                                  : Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, bottom: 10.0),
                                      child: SizedBox(
                                          width: double.infinity,
                                          child: FlatButton(
                                            color: PrimaryColor,
                                            textColor: Color(0xFFFFFFFF),
                                            disabledColor: Colors.grey,
                                            disabledTextColor: Colors.black,
                                            padding: EdgeInsets.all(20.0),
                                            splashColor: PrimaryColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  new BorderRadius.circular(
                                                      50.0),
                                            ),
                                            onPressed: () {
                                              setState(() {
                                                _isLoading = true;
                                                var route =
                                                    new MaterialPageRoute(
                                                  builder:
                                                      (BuildContext context) =>
                                                          new FormOrder(
                                                    value: Ngorder(
                                                      jumlah: harga,
                                                      nama_produk: title,
                                                      kode_produk: kode_produk,
                                                    ),
                                                  ),
                                                );
                                                Navigator.of(context)
                                                    .push(route);
                                              });
                                            },
                                            child: Text(
                                              "Order Sekarang",
                                              style: TextStyle(fontSize: 15.0),
                                            ),
                                          )),
                                    ),
                            ],
                          ));
                }),
          ],
        ),
      ),
    );
  }
}
