import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';



class Profile extends StatefulWidget {
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
          title: Text(
            "Sign Up",
            style: TextStyle(color: Color(0xFFBFBFBF)),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back_ios,
          color: Colors.black,
            ),
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text("Complete Profile",
                  style: TextStyle(color: Colors.black, fontSize: 40)),
              SizedBox(
                height: 15,
              ),
              Text("Complete Your details or connect",

                  style: TextStyle(color: Colors.grey)),
              SizedBox(
                height: 5,
              ),
              Text("with social media",
                  style: TextStyle(color: Colors.grey)),
              SizedBox(height: 45),
              TextField(
                decoration: InputDecoration(
                    labelText: "   First Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: BoxConstraints(
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
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your First name",
                    fillColor: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "  Last Name",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: BoxConstraints(
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
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your Last name",
                    fillColor: Colors.white),
              ),
              SizedBox(
                height: 25,
              ),
               TextField(
                decoration: InputDecoration(
                    labelText: "  Phone Number",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: BoxConstraints(
                      minWidth: 70,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        print("pressed");
                      },
                      icon: Icon(Icons.phone_enabled_sharp),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(70.0),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your Phone number",
                    fillColor: Colors.white),
              ),
              SizedBox(
                height: 25,
              ), TextField(
                decoration: InputDecoration(
                    labelText: "  Adress",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIconConstraints: BoxConstraints(
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
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 119, 118, 118)),
                    hintText: "  Enter Your Adress ",
                    fillColor: Colors.white),
              ),
              SizedBox(
                height:15
              ),
            
              SizedBox(height: 20),
              ButtonTheme(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFF77546),
                    fixedSize: const Size(300, 55),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Continue'),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 24,
              ),
             
                  Text("By continuing You confirm that u agree",style: TextStyle(fontSize:13,color:Color.fromARGB(255, 149, 147, 144)),),
                  SizedBox(
                    height: 1,
                  ),
                  Text("with our terms and conditions",style: TextStyle(color:Color.fromARGB(255, 149, 147, 144),fontSize:13),)
                
              
            ],
          ),
        )),
      ),
    );
  }
}
