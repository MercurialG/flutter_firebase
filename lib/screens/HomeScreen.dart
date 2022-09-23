import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: TextField(controller: controller,),
        actions: [
          IconButton(onPressed:(){
            final name = controller.text;
            createUser(name: name);
          },
              icon: Icon(Icons.add))
        ],
      ) ,
    );

  }

  Future createUser({required String name}) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc('my-id');

    final json = {
      'name': name,
      'age': 21,
      'birthday': DateTime(2000, 7 ,5)
    };

    await docUser.set(json);

  }
}
