import 'package:flutter/material.dart';
import 'package:myapp/widgets/login.dart';
import 'package:myapp/widgets/catalogo.dart';
import 'package:myapp/widgets/mis_clases.dart';
import 'package:myapp/widgets/perfil.dart';
import 'package:myapp/widgets/editar_perfil.dart';
import 'package:myapp/widgets/detalle_salsa.dart';

void main() {
  runApp(const DanceApp());
}

class DanceApp extends StatelessWidget {
  const DanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clases de Baile",
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/catalogo': (context) => const CatalogoScreen(),
        '/mis_clases': (context) => const MisClasesScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/editar_perfil': (context) => const EditarPerfilScreen(),
        '/detalle_salsa': (context) => const DetalleSalsaScreen(),
      },
    );
  }
}