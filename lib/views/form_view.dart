import 'package:flutter/material.dart';
import 'package:learningdart/Screens/detail_screen.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {

  var _fullName;
  var _aboutName;
  final _nameController = TextEditingController();
  final _aboutController = TextEditingController();
  bool?  _listTileCheckBox = false;
  // bool?  _checkBox = false;

  @override
  void dispose() {
    _nameController.dispose();
    _aboutController.dispose();
    super.dispose();
  }
 
  void _updateText(val) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
              labelText: 'Full Name',
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(
              ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: _aboutController,
              decoration: const InputDecoration(
              labelText: 'About Yourself',
              prefixIcon: Icon(Icons.description),
              border: OutlineInputBorder(
              ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            // Checkbox(
            //   checkColor: Colors.white,
            //   activeColor: Colors.purple,
            //   tristate: true,
            //   value: _checkBox, 
            //   onChanged: (val){
            //   setState(() {
            //     _checkBox = val;
            //   });
            // },
            // ),

            CheckboxListTile(
              value: _listTileCheckBox,
              title: const Text("I agree."), 
              onChanged: (val){
              setState(() {
                _listTileCheckBox = val;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(
              height: 20.0,
            ),

            myBtn(context),
          ],
        ),
      )
    );
  }

  OutlinedButton myBtn(BuildContext context) {
  return OutlinedButton(
    style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return DetailScreen(fullName: _nameController.text, about: _aboutController.text,);
        }),
         );
    },
    child: Text("Submit Form".toUpperCase(),
    style: const TextStyle(fontWeight: FontWeight.bold),),
  );
}
}

