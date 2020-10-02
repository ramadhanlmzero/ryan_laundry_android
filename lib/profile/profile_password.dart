import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePassword extends StatefulWidget {
  createState() {
    return ProfilePasswordState();
  }
}

class ProfilePasswordState extends State<ProfilePassword> {
  File _image;

  Widget build(context) {
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
          onPressed: () => Navigator.pop(context, '/profile'),
        ),
        title: Text('Ubah Password'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  oldPasswordField(),
                  newPasswordField(),
                  profileButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget oldPasswordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password Lama',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget newPasswordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password Baru',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget profileButton() {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.only(left: 50, right: 50),
      child: RaisedButton(
        padding: EdgeInsets.all(0),
        child: Ink(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.blue,
                Colors.lightBlue,
              ],
            ),
          ),
          child: Container(
            constraints: const BoxConstraints(
              minWidth: 150.0,
              minHeight: 36.0,
            ),
            alignment: Alignment.center,
            child: const Text(
              'Simpan',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        onPressed: () {
          //PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
        },
      ),
    );
  }
}
