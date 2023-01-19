import 'package:flutter/material.dart';
import 'package:validation_textformfield/validation_textformfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController txtEmailCtrl = TextEditingController();
  TextEditingController txtPasswordCtrl = TextEditingController();
  TextEditingController txtConfPasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Validation TextField',style: TextStyle(fontSize: 15),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Enter Email"),
                const SizedBox(height: 10,),
                EmailValidationTextField(
                  whenTextFieldEmpty: "Please enter  email",
                  validatorMassage: "Please enter valid email",
                  decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                  border: OutlineInputBorder(),
                  counterText: '',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18.0)),
                  textEditingController: txtEmailCtrl,
                ),
                const SizedBox(height: 20,),
                const Text("Enter Password"),
                const SizedBox(height: 10,),
                PassWordValidationTextFiled(
                  lineIndicator:false,
                  obscureText: true,
                  passwordMinError: "Must be more than 5 charater",
                  hasPasswordEmpty: "Password is Empty",
                  passwordMaxError: "Password to long",
                  passWordUpperCaseError: "at least one Uppercase (Capital)lette",
                  passWordDigitsCaseError: "at least one digit",
                  passwordLowercaseError: "at least one lowercase character",
                  passWordSpecialCharacters: "at least one Special Characters",
                  scrollPadding: const EdgeInsets.only(left: 60),
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                    ),
                    border: OutlineInputBorder(),
                    ),
                  passTextEditingController: txtPasswordCtrl,
                  passwordMaxLength: 10,
                  passwordMinLength: 5,
                ),
                const SizedBox(height: 10,),
                const Text("Enter Confirm Password"),
                const SizedBox(height: 10,),
                ConfirmPassWordValidationTextFromField(
                  obscureText: true,
                  scrollPadding: const EdgeInsets.only(left: 60),
                  onChanged: (value) {
                  },
                  decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                  border: OutlineInputBorder(),
                  ),
                  whenTextFieldEmpty: "Empty",
                  validatorMassage: "Password not Match",
                  confirmtextEditingController: txtConfPasswordCtrl,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
