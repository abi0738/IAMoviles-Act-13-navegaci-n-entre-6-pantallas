import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Catálogo de Clases"),
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

                // 📦 Caja del catálogo
                Container(
                  width: 320,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFCDD4),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: Column(
                    children: [

                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/detalle_salsa');
                        },
                        child: const Text(
                          "1. Salsa",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        "2. Hip Hop",
                        style: TextStyle(fontSize: 20),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        "3. Ballet",
                        style: TextStyle(fontSize: 20),
                      ),

                      const SizedBox(height: 12),

                      const Text(
                        "4. K-Pop",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // 🔘 Ver Perfil
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9E9E9E),
                    minimumSize: const Size(250, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/perfil');
                  },
                  child: const Text(
                    "Ver Perfil",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(height: 10),

                // 🔘 Mis Clases
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9E9E9E),
                    minimumSize: const Size(250, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mis_clases');
                  },
                  child: const Text(
                    "Mis Clases",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(height: 10),

                // 🔘 Cerrar Sesión
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
                    "Cerrar Sesión",
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