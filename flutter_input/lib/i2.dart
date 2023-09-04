import 'package:flutter/material.dart';

class I2 extends StatelessWidget {
  const I2({super.key});

  @override
  Widget build(BuildContext context) {
    final edtInput = TextEditingController();
    final edtInput2 = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Form Field & Form'),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: edtInput,
              decoration: const InputDecoration(
                labelText: 'this is label',
                hintText: 'this is hint',
              ),
              validator: (value) {
                if (value == '') return "Don't empty"; // not valid
                return null; // valid
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: edtInput2,
              decoration: const InputDecoration(
                labelText: 'this is label',
                hintText: 'this is hint',
              ),
              validator: (value) {
                if (value == '') return "Don't empty"; // not valid
                return null; // valid
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  print('valid');
                  print(edtInput.text);
                  print(edtInput2.text);
                } else {
                  print('not valid');
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
