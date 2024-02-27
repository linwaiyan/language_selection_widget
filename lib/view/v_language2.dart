import 'package:flutter/material.dart';
import 'package:flutter_super_scaffold/flutter_super_scaffold.dart';
import 'package:language_select/language/language.dart';

class ViewLanguage2 extends StatelessWidget {
  const ViewLanguage2({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSuperScaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              xEnLang()
                  ? 'Welcome to SAN PYA EXPRESS!'
                  : 'SAN PYA EXPRESS မှကြိုဆိုပါသည်',
            ),
          ),
        ],
      ),
    );
  }
}
