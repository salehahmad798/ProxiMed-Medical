import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  String _fullName = '';
  String _nickName = '';
  String _email = '';
  String _phoneNumber = '';
  String _country = '';
  String _gender = '';
  String _address = '';
  String _profession = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_pic.png'),
              ),
              TextButton(
                onPressed: () {
                  // Implement profile picture change
                },
                child: Text('Change Profile Picture'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Full Name'),
                onSaved: (value) {
                  _fullName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nick Name'),
                onSaved: (value) {
                  _nickName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone Number'),
                onSaved: (value) {
                  _phoneNumber = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Country'),
                onSaved: (value) {
                  _country = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Gender'),
                onSaved: (value) {
                  _gender = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address'),
                onSaved: (value) {
                  _address = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Profession'),
                onSaved: (value) {
                  _profession = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Implement save functionality
                  }
                },
                child: Text('Save'),
              ),
              TextButton(
                onPressed: () {
                  // Implement view more photos functionality
                },
                child: Text('View More Photos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}