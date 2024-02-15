import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw_6/data/Item_manager.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    this.controller,
    required this.label,
    required this.hintText,
  });

  final TextEditingController? controller;
  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 200,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                label: Text(label),
                hintText: hintText,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(
                        style: BorderStyle.solid, color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.lightBlue , ),
          onPressed:(){ 
           controller!.text = "";
           GetIt.I.get<ItemManager>().box.remove(label);

           
        }, child: const Text("clear" , style: TextStyle(color: Colors.white ,fontSize: 18 , fontWeight: FontWeight.bold),)),
      ],
    );
  }
}
