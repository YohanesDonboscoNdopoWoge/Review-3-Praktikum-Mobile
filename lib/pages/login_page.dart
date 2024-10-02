import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Username',
                    labelText: "Nama",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Password',
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Email',
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 20),
              // Radio button untuk jenis kelamin
              ListTile(
                leading: Radio<String>(
                  value: 'Laki-Laki',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
                title: const Text('Laki-Laki'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Perempuan',
                  groupValue: selectedGender,
                  onChanged: (String? value) {
                    setState(() {
                      selectedGender = value;
                    });
                  },
                ),
                title: const Text('Perempuan'),
              ),
              const SizedBox(height: 20),
              
              Text(
                selectedGender == null
                    ? 'Pilih Jenis Kelamin'
                    : 'Jenis Kelamin: $selectedGender',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}
