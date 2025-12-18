import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Form"),
        backgroundColor: Colors.blueAccent,
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Form(
      //     key: _formKey,
      //     child: SingleChildScrollView(
      //       child: Column(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           Text(
      //             "User Information",
      //             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //           ),
      //           SizedBox(height: 20),
      //
      //           // Name Field
      //           TextFormField(
      //             decoration: InputDecoration(
      //               labelText: 'Name',
      //               labelStyle: TextStyle(color: Colors.blueAccent),
      //               filled: true,
      //               fillColor: Colors.blueGrey[50],
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(12),
      //                 borderSide: BorderSide.none,
      //               ),
      //               contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      //             ),
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return 'Please enter your name';
      //               }
      //               return null;
      //             },
      //             onChanged: (value) {
      //               setState(() {
      //                 name = value;
      //               });
      //             },
      //           ),
      //           SizedBox(height: 15),
      //
      //           // Email Field
      //           TextFormField(
      //             decoration: InputDecoration(
      //               labelText: 'Email',
      //               labelStyle: TextStyle(color: Colors.blueAccent),
      //               filled: true,
      //               fillColor: Colors.blueGrey[50],
      //               border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(12),
      //                 borderSide: BorderSide.none,
      //               ),
      //               contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      //             ),
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return 'Please enter your email';
      //               } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      //                 return 'Please enter a valid email';
      //               }
      //               return null;
      //             },
      //             onChanged: (value) {
      //               setState(() {
      //                 email = value;
      //               });
      //             },
      //           ),
      //           SizedBox(height: 20),
      //
      //           // Submit Button
      //           ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: Colors.blueAccent,
      //               padding: EdgeInsets.symmetric(vertical: 15),
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //             ),
      //             onPressed: () {
      //               if (_formKey.currentState?.validate() ?? false) {
      //                 // If the form is valid, display a Snackbar or process the data
      //                 ScaffoldMessenger.of(context).showSnackBar(
      //                   SnackBar(content: Text('Processing Data...')),
      //                 );
      //               }
      //             },
      //             child: Center(
      //               child: Text(
      //                 'Submit',
      //                 style: TextStyle(fontSize: 18, color: Colors.white),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      body: ListView(
        // children: [
        //   Padding(
        //     padding: const EdgeInsets.all(12.0),child: Container(width: 200,height: 100,color: Colors.blue,),
        //   ),
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                " Text Box Blue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        Container(
            width: 200,height: 100,color: Colors.blueGrey,
          alignment: Alignment.center,
          child: Text(
            " Text Box ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          ),
          Container(
            width: 200,height: 100,color: Colors.blue,
          ),
          Container(
            width: 200,height: 100,color: Colors.redAccent,
          ),
          Container(
            width: 200,height: 100,color: Colors.deepOrangeAccent,
          ),
        ],
      )
    );
  }
}
