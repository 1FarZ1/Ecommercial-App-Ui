import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Sign Up",
            style: TextStyle(color: Color(0xFFBFBFBF)),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            children: [
              const SizedBox(height: 15),
              //
              const Text("Complete Profile",
                  style: TextStyle(color: Colors.black, fontSize: 40)),
              const SizedBox(
                height: 15,
              ),
              const Text("Complete Your details or connect",
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(
                height: 5,
              ),
              const Text("with social media",
                  style: TextStyle(color: Colors.grey)),
              const SizedBox(height: 25),

              TextField(
                decoration: InputDecoration(
                    labelText: "   First Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 70,
                    ),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     print("pressed");
                    //   },
                    //   icon: Icon(Icons.mail_outline),
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                      borderSide: const BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your First name",
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "  Last Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 70,
                    ),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     print("pressed");
                    //   },
                    //   icon: Icon(Icons.lock),
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                      borderSide: const BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your Last name",
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "  Phone Number",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 70,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.phone_enabled_sharp),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                      borderSide: const BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your Phone number",
                    fillColor: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "  Adress",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: const BoxConstraints(
                      minWidth: 70,
                    ),
                    // suffixIcon: IconButton(
                    //   onPressed: () {
                    //     print("pressed");
                    //   },
                    //   icon: Icon(Icons.phone),
                    // ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                      borderSide: const BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(
                        color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your Adress ",
                    fillColor: Colors.white),
              ),
              const SizedBox(height: 40),
              ButtonTheme(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFF77546),
                    fixedSize: const Size(350, 55),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Continue'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, "/verif");
                  },
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              const Text(
                "By continuing You confirm that u agree",
                style: TextStyle(
                    fontSize: 13, color: Color.fromARGB(255, 149, 147, 144)),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                "with our terms and conditions",
                style: TextStyle(
                    color: Color.fromARGB(255, 149, 147, 144), fontSize: 13),
              )
            ],
          ),
        )),
      ),
    );
  }
}
