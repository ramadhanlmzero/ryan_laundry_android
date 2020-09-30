import 'package:flutter/material.dart';

class HomeComponent extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String image;

  HomeComponent(this.id, this.title, this.description, this.image);

  //METHOD INI AKAN BERJALAN KETIKA TOMBOL KATEGORI DI TAP (KLIK)
  void goToNewScreen(BuildContext context) {
    //FUNGSI NAVIGASINYA AKAN ADA DISINI TAPI AKAN DIBAHAS KEMUDIAN JADI TOLONG DIINGAT
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToNewScreen(context),
      highlightColor: Colors.white.withAlpha(30),
      splashColor: Colors.white.withAlpha(20),
      child: Card(
        elevation: 5,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  image,
                  height: 60,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Center(
                child: Text(
                  title,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
