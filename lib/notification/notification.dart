import 'package:flutter/material.dart';
import 'package:ryan_laundry/notification/notification_model.dart';
import 'package:ryan_laundry/notification/notification_component.dart';

class Notif extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NotifState();
}

class NotifState extends State<Notif> {
  List<NotifModel> data = [
    NotifModel(
      1,
      "Pesanan Cuci Setrika Anda Sedang Diproses",
      "07/11/2019 07:00",
    ),
    NotifModel(
      2,
      "Pesanan Cuci Kering Anda Sudah Selesai",
      "07/11/2019 08:00",
    ),
    NotifModel(
      3,
      "Pesanan Cuci Kering Anda Sudah Diambil",
      "07/11/2019",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.blue,
                Colors.lightBlue,
              ],
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.pop(context, '/'),
        ),
        title: Text('Notifikasi'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 24),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return NotifComponent(index, data[index]);
          },
        ),
      ),
    );
  }
}
