import 'package:ryan_laundry/notification/notification_model.dart';
import 'package:flutter/material.dart';

class NotifComponent extends StatelessWidget {
  final int index;
  final NotifModel data;

  NotifComponent(this.index, this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        border: new Border(
          top: new BorderSide(style: BorderStyle.solid, color: Colors.black26),
        ),
        color: new Color(0xFFFAFAFA),
      ),
      child: InkWell(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data.description,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2),
                      child: Text(data.date),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
