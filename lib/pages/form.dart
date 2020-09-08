import 'package:flutter/material.dart';
import 'package:youtube/colors.dart';
import 'package:youtube/pages/order.dart';
import 'package:youtube/pages/classForm.dart';

class Bayar {
  final String jumlah;
  final String nama_produk;
  final String kode_produk;
  final String link;
  final String nama;
  final String email;
  final String nohp;
  const Bayar(
      {this.jumlah,
      this.nama_produk,
      this.kode_produk,
      this.link,
      this.nama,
      this.email,
      this.nohp});
}

class FormOrder extends StatefulWidget {
  final Ngorder value;
  FormOrder({Key key, this.value}) : super(key: key);

  @override
  _FormOrderState createState() => _FormOrderState();
}

class _FormOrderState extends State<FormOrder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getValue();
  }

  Future<Null> _getValue() async {
    String harga = widget.value.jumlah;
    String title = widget.value.nama_produk;
    String kode_produk = widget.value.kode_produk;
  }

  bool _isLoading = false;

  // link youtube
  // nama
  // email
  // nohp

  TextEditingController _linkController = new TextEditingController();
  TextEditingController _namaController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _nohpController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WhiteColor,
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        title: Text('Formulir pendaftaran'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                  child: Image.asset('images/form2.png')),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextField(
                    controller: _linkController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0XFFbd0006), width: 2.0),
                          // borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: 'http://',
                        labelText: 'Link Youtube')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextField(
                    controller: _namaController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0XFFbd0006), width: 2.0),
                          // borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: 'ahmad yahya',
                        labelText: 'Nama lengkap')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0XFFbd0006), width: 2.0),
                          // borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: 'nama@example.com',
                        labelText: 'Email')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                child: TextField(
                    controller: _nohpController,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0XFFbd0006), width: 2.0),
                          // borderRadius: BorderRadius.circular(25.0),
                        ),
                        hintText: '085xxxxxx',
                        labelText: 'Nomor handphone')),
              ),
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
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) => new Order(
                            value: Bayar(
                              jumlah: widget.value.jumlah,
                              nama_produk: widget.value.nama_produk,
                              kode_produk: widget.value.kode_produk,
                              link: _linkController.text,
                              nama: _namaController.text,
                              email: _emailController.text,
                              nohp: _nohpController.text,
                            ),
                          ),
                        );
                        Navigator.of(context).push(route);
                      });
                    },
                    child: Text(
                      "Order Sekarang",
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
