import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Perfil"),
        centerTitle: true,
        backgroundColor: const Color(0xFF9E9E9E),
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [

          // 🎵 Fondo musical
          Positioned.fill(
            child: Opacity(
              opacity: 0.07,
              child: Center(
                child: Text(
                  "🎵   🎶   🎵   🎶   🎵   🎶",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Color(0xFFFFCDD4),
                  child: Icon(Icons.person, size: 50, color: Colors.black),
                ),

                const SizedBox(height: 20),

                const Text(
                  "Ashley Abigail Vega Holguín",
                  style: TextStyle(fontSize: 20),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Correo: ejemplo@gmail.com",
                  style: TextStyle(fontSize: 16),
                ),

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
                    Navigator.pushNamed(context, '/editar_perfil');
                  },
                  child: const Text(
                    "Editar Perfil",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(height: 10),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9E9E9E),
                    minimumSize: const Size(250, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Regresar",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}