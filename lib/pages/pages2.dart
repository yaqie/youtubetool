import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/colors.dart';
import 'package:indonesia/indonesia.dart';
import 'package:youtube/pages/classForm.dart';
import 'package:youtube/pages/form.dart';

class Pagetwo extends StatefulWidget {
  @override
  _PagetwoState createState() => _PagetwoState();
}

class _PagetwoState extends State<Pagetwo> {
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
        title = 'Subscriber Bulanan 1';
        kode_produk = 'sub1';
        harga = '590000';
        views = '';
        deskripsi =
            'MENDAPATKAN SUBSCRIBER BARU\nSETIAP HARI SELAMA 1 BULAN\n(30 HARI)';
        listDetail = [
          '14 - 20 Sub baru setiap hari',
          'Untuk 1 Channel youtube',
          'Garansi uang kembali',
        ];
      } else if (_current == 1) {
        title = 'Subscriber Bulanan 2';
        kode_produk = 'sub2';
        harga = '1130000';
        views = '';
        deskripsi =
            'MENDAPATKAN SUBSCRIBER BARU\nSETIAP HARI SELAMA 1 BULAN\n(30 HARI)';
        listDetail = [
          '29 - 40 Sub baru setiap hari',
          'Untuk 1 Channel youtube',
          'Garansi uang kembali',
        ];
      } else if (_current == 2) {
        title = 'Subscriber Bulanan 3';
        kode_produk = 'sub3';
        harga = '2200000';
        views = '';
        deskripsi =
            'MENDAPATKAN SUBSCRIBER BARU\nSETIAP HARI SELAMA 1 BULAN\n(30 HARI)';
        listDetail = [
          '56 - 80 Sub baru setiap hari',
          'Untuk 1 Channel youtube',
          'Garansi uang kembali',
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> list = [0, 1, 2];
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
                                      alignment: Alignment.center,
                                      child: Container(
                                        child: new Text(
                                          deskripsi,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
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
