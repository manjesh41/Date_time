import 'package:date_time_picker/view/display_user.dart';
import 'package:flutter/material.dart';

import 'view/add_user_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/addUser',
      routes: {
        '/addUser': (context) => const AddUserView(),
        '/viewUser': (context) => const DisplayUserView(),
      },
    );
  }
}