import 'package:flutter/material.dart';

class MisClasesScreen extends StatelessWidget {
  const MisClasesScreen({super.key});

  Widget claseCard(String nombre, String horario, String emoji) {
    return Container(
      width: 320,
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xFFFFCDD4),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$nombre $emoji",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Horario: $horario",
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Mis Clases Activas"),
        centerTitle: true,
        backgroundColor: const Color(0xFF9E9E9E),
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          // Fondo con símbolos de música
          Positioned.fill(
            child: Opacity(
              opacity: 0.08,
              child: Center(
                child: Text(
                  "🎵 🎶 🎵 🎶 🎵 🎶 🎵 🎶 🎵 🎶",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),

          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [

                  const SizedBox(height: 30),

                  const Text(
                    "Lista de Clases Inscritas",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  claseCard("Salsa", "Lunes y Miércoles 5:00 PM", "💃"),
                  claseCard("Hip Hop", "Martes 6:00 PM", "🕺"),
                  claseCard("Ballet", "Jueves 4:00 PM", "🩰"),
                  claseCard("K-Pop", "Viernes 5:30 PM", "🎤"),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9E9E9E),
                      minimumSize: const Size(250, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/catalogo');
                    },
                    child: const Text(
                      "Regresar al Catálogo",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Ashley Abigail Vega Holguín 6I",
                    style: TextStyle(fontSize: 14),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}