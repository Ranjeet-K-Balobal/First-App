import 'package:example1_test/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changebutton = false;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
              
              
              ),
              
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            ),

          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32.0),
          child: Column(children:[
            TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username" 
            ),
            onChanged: (value){
              name=value;
              setState(() {
                
              });
            },
          ),
          
          TextFormField(
            obscureText:true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password"
            ),
          ),
          SizedBox(
            height: 40.0
          ),


          InkWell(
            onTap:() async {
              setState((){
                changebutton=true;
              });

              await Future.delayed(Duration(seconds: 1));


              Navigator.pushNamed(context, MyRoutes.HomeRoute);
            } ,
            child: AnimatedContainer(
              duration: Duration(seconds: 1 ),
              width: changebutton?60: 150,
              height: changebutton?60: 50,
              alignment: Alignment.center,
              child: changebutton?Icon(Icons.done,color: Colors.white,): Text(
                "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight : FontWeight.bold,
                    fontSize: 18), 
               ),
                decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(changebutton?30:8)
                ),
            ),
          )

          // ElevatedButton(onPressed: (){
          //   Navigator.pushNamed(context, MyRoutes.HomeRoute);
          // }
          // , child:Text("Login"),
          // style: TextButton.styleFrom(minimumSize: Size(150, 40)),

          // )
          ]
          ),
          )

        ],
        )
      ),
      );
  }
}