import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
final _formKey = GlobalKey<FormState>();
TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();




class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {


    
    
    
    
    
    
    return Scaffold(
         appBar: AppBar(
        title: Text("lll"),

      ),
      body:Form(
        key: _formKey ,
        child:  Column(children: 
       [ Text("TextFlold #1"),
      TextFormField(

        controller: _controller1,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "username",
        hintText: "please enter username",
        hintStyle: TextStyle(color: Colors.grey)


      ),

     
      ),
       TextFormField(
           obscureText: true,
        controller: _controller2,
      validator: (value) {
    if (value!.isEmpty) {
    return 'Enter text';
    }
    return null;
    },
       decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "plassword",
     
        hintText: "please enter plassword",
        hintStyle: TextStyle(color: Colors.grey)


      ),
      ),

      
      ElevatedButton(
        onPressed: () {
          if(_formKey.currentState!.validate()) {
            print(_controller1.text);
          }

           if(_formKey.currentState!.validate()) {
            print(_controller2.text);
          }
          
        },
        child: Text('Submit'),
        )



       ],

      ),)
      











      
    
    );

    
  }
}
