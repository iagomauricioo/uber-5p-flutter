import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/screens/atividade_screen.dart';
import 'package:novo_uber_flutter/screens/conta_screen.dart';
import 'package:novo_uber_flutter/screens/main_layout.dart';
import 'package:novo_uber_flutter/screens/opces_screen.dart';
import 'package:novo_uber_flutter/screens/solicitar_viagem_screen.dart';
import 'package:novo_uber_flutter/screens/viagens_screen.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      initialRoute: '/viagens',
      routes: {
        '/viagens': (context) => const MainLayout(body: TelaViagens()),
        '/opcoes': (context) => const MainLayout(body: TelaOpcoes()),
        '/atividade': (context) => const MainLayout(body: TelaAtividade()),
        '/conta': (context) => const MainLayout(body: TelaConta()),
        '/solicitar': (context) => const MainLayout(body: SolicitarViagemScreen()),
      },
    );
  }
}
