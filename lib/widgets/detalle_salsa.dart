import 'package:flutter/material.dart';

class DetalleSalsaScreen extends StatelessWidget {
  const DetalleSalsaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Detalle Salsa"),
        centerTitle: true,
        backgroundColor: const Color(0xFF9E9E9E),
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text("Descripción"),
            const SizedBox(height: 5),
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: const Text(
                  "Aprende los pasos básicos y avanzados de Salsa."),
            ),

            const SizedBox(height: 15),

            const Text("Nivel"),
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("Intermedio"),
            ),

            const SizedBox(height: 15),

            const Text("Precio"),
            Container(
              width: 250,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all()),
              child: const Text("\$500 MXN"),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9E9E9E),
                    minimumSize: const Size(120, 50),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Inscribirme",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                const SizedBox(width: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF9E9E9E),
                    minimumSize: const Size(120, 50),
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
          ],
        ),
      ),
    );
  }
}