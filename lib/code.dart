import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class code extends StatefulWidget {
  const code({Key? key}) : super(key: key);

  @override
  State<code> createState() => _codeState();
}

class _codeState extends State<code> {
  bool t= true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            "Data_Entry",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Email",

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade500, width: 2),
                  ),
                  prefixIcon: Icon(Icons.person,
                    color: Colors.blue,
                    size: 20),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blue.shade500, width: 3)),
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                obscureText: t,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  labelText: "Password",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue.shade500, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.blue.shade500, width: 3)),
                  prefixIcon: Icon(Icons.lock,
                    color: Colors.blue,
                    size: 20,
                  ),
                  suffix: InkWell(
                    onTap: (){
                      setState(() {
                        t=false;
                      });
                    },
                    onDoubleTap: (){
                      setState(() {
                        t=true;
                      });
                    },
                    child: Icon(Icons.remove_red_eye,
                      color: Colors.blue,
                      size: 20,
                    ),
                  )
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
