import 'package:ryan_laundry/order/order_model.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class OrderComponent extends StatelessWidget {
  final int index;
  final OrderModel data;

  OrderComponent(this.index, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, left: 10, right: 10),
      child: InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            side: new BorderSide(color: Colors.lightBlue, width: 1.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data.category,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 2),
                        child: Text(data.date),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: _statusOrder(data.status),
              ),
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}

Widget _statusOrder(status) {
  if (status == 'Belum Diproses') {
    return Badge(
      badgeColor: Colors.orange,
      shape: BadgeShape.square,
      toAnimate: false,
      badgeContent: Text(
        status,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  if (status == 'Sedang Diproses') {
    return Badge(
      badgeColor: Colors.purple,
      shape: BadgeShape.square,
      toAnimate: false,
      badgeContent: Text(
        status,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  if (status == 'Sudah Selesai') {
    return Badge(
      badgeColor: Colors.purpleAccent,
      shape: BadgeShape.square,
      toAnimate: false,
      badgeContent: Text(
        status,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
  if (status == 'Sudah Diambil') {
    return Badge(
      badgeColor: Colors.green,
      shape: BadgeShape.square,
      toAnimate: false,
      badgeContent: Text(
        status,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
