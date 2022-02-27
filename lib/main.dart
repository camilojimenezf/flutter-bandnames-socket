import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:band_names_app/pages/home.dart';
import 'package:band_names_app/pages/status.dart';
import 'package:band_names_app/services/socket_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Patrón singleton un provider en toda la App
        ChangeNotifierProvider(create: (_) => SocketService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'status': (_) => StatusPage(),
        },
      ),
    );
  }
}
