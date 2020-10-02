import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileEdit extends StatefulWidget {
  createState() {
    return ProfileEditState();
  }
}

class ProfileEditState extends State<ProfileEdit> {
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
        title: Text('Ubah Profil'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: [
            photoField(),
            Form(
              child: Column(
                children: [
                  nameField(),
                  emailField(),
                  phoneField(),
                  addressField(),
                  profileButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Nama',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget phoneField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'No. Telp',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget addressField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Alamat',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget photoField() {
    Future getImage() async {
      var image = await ImagePicker.pickImage(source: ImageSource.gallery);

      setState(() {
        _image = image;
        print('Image Path $_image');
      });
    }

    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xff476cfb),
                  child: ClipOval(
                    child: new SizedBox(
                      width: 100.0,
                      height: 100.0,
                      child: (_image != null)
                          ? Image.file(
                              _image,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              "assets/avatar.png",
                              fit: BoxFit.fill,
                            ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.0),
                child: IconButton(
                  icon: Icon(
                    Icons.photo_camera,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    getImage();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
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
