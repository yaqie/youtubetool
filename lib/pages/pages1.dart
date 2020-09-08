import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:youtube/colors.dart';
import 'package:indonesia/indonesia.dart';
import 'package:youtube/pages/classForm.dart';
import 'package:youtube/pages/form.dart';

class Pageone extends StatefulWidget {
  @override
  _PageoneState createState() => _PageoneState();
}

class _PageoneState extends State<Pageone> {
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
        title = 'Standart';
        kode_produk = 'view1';
        harga = '199000';
        views = '/2.000 Views';
        deskripsi = 'VIDEO ANDA AKAN DITONTON OLEH\n 2.000 HINGGA 2.400 ORANG';
        listDetail = [
          'Mendapatkan View: 2,000 - 2,400 View',
          'Bonus View: 0',
          'Perkiraan Subscriber Yang Didapat: 10 -200 Sub',
          'Perkiraan Like Di dapat : 10 - 410 Like',
          'Perkiraan Share: 4 - 20 Share',
          'Perkiraan Comment : 4 - 140 Comment',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 1) {
        title = 'Youtuber';
        kode_produk = 'view2';
        harga = '495000';
        views = '/5.000 Views';
        deskripsi = 'VIDEO ANDA AKAN DITONTON OLEH\n 5.000 HINGGA 7.000 ORANG';
        listDetail = [
          'Mendapatkan View: 5,000 - 7,000 View',
          'Bonus View: 500',
          'Perkiraan Subscriber Yang Didapat: 25 -500 Sub',
          'Perkiraan Like Di dapat : 25 - 920 Like',
          'Perkiraan Share: 10 - 50 Share',
          'Perkiraan Comment : 10 - 350 Comment',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 2) {
        title = 'Golden';
        kode_produk = 'view3';
        harga = '990000';
        views = '/10.000 Views';
        deskripsi =
            'VIDEO ANDA AKAN DITONTON OLEH\n 10.000 HINGGA 15.000 ORANG';
        listDetail = [
          'Mendapatkan View: 10.000 - 15.000 View',
          'Bonus View: 1.000',
          'Perkiraan Subscriber Yang Didapat: 50 - 1.000 Sub',
          'Perkiraan Like Di dapat : 50 - 1.850 Like',
          'Perkiraan Share: 20 - 100 Share',
          'Perkiraan Comment : 20 - 700 Comment',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 3) {
        title = 'Vip 1';
        kode_produk = 'view4';
        harga = '2475000';
        views = '/25.000 Views';
        deskripsi =
            'VIDEO ANDA AKAN DITONTON OLEH\n 25.000 HINGGA 30.000 ORANG';
        listDetail = [
          'Mendapatkan View: 27,5000 - 30,000 View',
          'Bonus View: 2,500',
          'Perkiraan Subscriber Yang Didapat: 135 -2,550 Sub',
          'Perkiraan Like Di dapat : 130 - 520 Like',
          'Perkiraan Share: 55 - 250 Share',
          'Perkiraan Comment : 55 - 1,500 Comment',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 4) {
        title = 'Vip 2';
        kode_produk = 'view5';
        harga = '4750000';
        views = '/50.000 Views';
        deskripsi =
            'VIDEO ANDA AKAN DITONTON OLEH\n 50.000 HINGGA 70.000 ORANG';
        listDetail = [
          'Mendapatkan View: 55,000 - 65,000 View',
          'Bonus View: 5,000',
          'Perkiraan Subscriber Yang Didapat: 270 -5,100 Sub',
          'Perkiraan Like Di dapat : 260 - 1,050 Like',
          'Perkiraan Share: 110 - 500 Share',
          'Perkiraan Comment : 110 - 1,500 Comment',
          'Proses 1 - 5 Hari'
        ];
      } else if (_current == 5) {
        title = 'Vip 3';
        kode_produk = 'view6';
        harga = '9500000';
        views = '/100.000 Views';
        deskripsi =
            'VIDEO ANDA AKAN DITONTON OLEH\n 100.000 HINGGA 150.000 ORANG';
        listDetail = [
          'Mendapatkan View: 110,000 - 130,000 View',
          'Bonus View: 10,000',
          'Perkiraan Subscriber Yang Didapat: 540 -10,200 Sub',
          'Perkiraan Like Di dapat : 260 - 1,050 Like',
          'Perkiraan Share: 220 - 1,000 Share',
          'Perkiraan Comment : 220 - 3,000 Comment',
          'Proses 1 - 5 Hari'
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
