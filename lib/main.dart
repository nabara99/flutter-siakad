import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/auth/splash_page.dart';

import 'data/datasources/auth_local_datasource.dart';
import 'pages/mahasiswa/mahasiswa_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<bool>(
        future: AuthLocalDatasource().isLogin(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!) {
            return const MahasiswaPage();
          } else {
            return const SplashPage();
          }
        },
      ),
    );
  }
}
