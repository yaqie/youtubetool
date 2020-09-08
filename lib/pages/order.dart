import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youtube/colors.dart';
import 'package:youtube/pages/form.dart';
import 'package:youtube/pages/pages1.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:qr_flutter/qr_flutter.dart';

class Order extends StatefulWidget {
  final Bayar value;
  Order({Key key, this.value}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool _isLoading = false;
  String qr;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getValue();
  }

  Future<Null> _getValue() async {
    Map data = {
      "linkyoutube": widget.value.link,
      "jumlah": widget.value.jumlah,
      "namaproduk": widget.value.nama_produk,
      "kodeproduk": widget.value.kode_produk,
      "namaclient": widget.value.nama,
      "emailclient": widget.value.email,
      "hpclient": widget.value.nohp
    };
    var jsonData;
    var response = await http.post("http://jempol.in/pay.php", body: data);
    if (response.statusCode == 200) {
      jsonData = json.decode(response.body);
      setState(() {
        qr = jsonData['data']['qr_string'];
      });
      print(jsonData['data']['qr_string']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        title: Text('Order'),
        backgroundColor: PrimaryColor,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              qr == null
                  ? Column(
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, left: 20, right: 20),
                            child: Image.asset('images/loading-red.gif')),
                        Center(
                          child: Text(
                            'Menunggu qr code siap ...',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        )
                      ],
                    )
                  : Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40.0, left: 20.0, right: 20.0, bottom: 20.0),
                          child: Center(
                            child: QrImage(
                              data: qr,
                              version: QrVersions.auto,
                              size: 300.0,
                              // embeddedImage:Image.asset('images/logo.png'),
                              // embeddedImage: AssetImage('images/inacashqrcode.png'),
                              embeddedImageStyle: QrEmbeddedImageStyle(
                                size: Size(40, 40),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Scan QR Code di atas \nuntuk melakukan pembayaran',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        )
                      ],
                    )
            ],
          )
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: double.infinity,
            child: _isLoading == false
                ? FlatButton(
                    color: PrimaryColor,
                    textColor: Color(0xFFFFFFFF),
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(20.0),
                    splashColor: PrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),
                    onPressed: () {
                      setState(() {
                        _isLoading = true;
                      });
                    },
                    child: Text(
                      "Konfirmasi",
                      style: TextStyle(fontSize: 15.0),
                    ),
                  )
                : FlatButton(
                    color: Colors.grey,
                    textColor: Color(0xFFFFFFFF),
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    padding: EdgeInsets.all(13.0),
                    splashColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                      // side: BorderSide(color: Colors.red)
                    ),
                    onPressed: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      margin: EdgeInsets.all(5),
                      child: CircularProgressIndicator(
                        strokeWidth: 2.0,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      ),
                    ),
                    // CircularProgressIndicator(
                    //   backgroundColor: Colors.white,
                    //   valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    // ),
                  ),
          ),
        ),
      ),
    );
  }
}
