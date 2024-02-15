import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/data/Item_manager.dart';
import 'package:hw_6/model/user_model.dart';
import 'text_field_widget.dart';

class UpperField extends StatefulWidget {
  final VoidCallback? onUpdate;

  const UpperField({Key? key, this.onUpdate}) : super(key: key);

  @override
  State<UpperField> createState() => _UpperFieldState();
}

class _UpperFieldState extends State<UpperField> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextFieldWidget(
              label: "name",
              hintText: "enter your name",
              controller: nameController,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFieldWidget(
              label: "email",
              hintText: "enter your email",
              controller: emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
                GetIt.I.get<ItemManager>().addItem(UserModel(name: nameController.text, email:emailController.text));

                if (widget.onUpdate != null) {
                  widget.onUpdate!(); 
                }
              },
              child: const Text("add", style: TextStyle(color: Colors.white ,fontSize: 18 , fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                GetIt.I.get<ItemManager>().removeItem();
                if (widget.onUpdate != null) {
                  widget.onUpdate!(); 
                }
              },
              child: const Text("clear list", style: TextStyle(color: Colors.white ,fontSize: 18 , fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
