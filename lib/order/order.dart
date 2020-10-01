import 'package:flutter/material.dart';
import 'package:ryan_laundry/order/order_model.dart';
import 'package:ryan_laundry/order/order_component.dart';

class Order extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OrderState();
}

class OrderState extends State<Order> {
  List<OrderModel> data = [
    OrderModel(1, "Cuci Setrika", "07/11/2019", "Belum Diproses"),
    OrderModel(2, "Cuci Kering", "07/11/2019", "Sedang Diproses"),
    OrderModel(3, "Cuci Basah", "07/11/2019", "Sudah Selesai"),
    OrderModel(4, "Setrika Kilat", "07/11/2019", "Sudah Diambil"),
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
        title: Text('Riwayat Cucian'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 24),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return OrderComponent(index, data[index]);
          },
        ),
      ),
    );
  }
}
