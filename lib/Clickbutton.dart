import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practical_exam/Recipes.dart';
import 'model_class.dart';

class click extends StatefulWidget {
  Model model = Model();
  click({Key, key,});

  @override
  State<click> createState() => _clickState();
}
List<Model> modelList = [];

class _clickState extends State<click> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String dataString =
            await rootBundle.loadString('assets/recipe.json');
            List jsonData = jsonDecode(dataString);
            modelList = Model.parseList(jsonData);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Recipe()));
            setState(() {});
          },
          child: Text('Click'),
        ),
      ),
    );
  }
}
