import 'package:flutter/material.dart';

class EditarPerfilScreen extends StatefulWidget {
  const EditarPerfilScreen({super.key});

  @override
  State<EditarPerfilScreen> createState() => _EditarPerfilScreenState();
}

class _EditarPerfilScreenState extends State<EditarPerfilScreen> {

  String generoSeleccionado = "Femenino";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Editar Perfil"),
        centerTitle: true,
        backgroundColor: const Color(0xFF9E9E9E),
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              // FOTO DE PERFIL
              const CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xFFE0E0E0),
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 10),

              TextButton(
                onPressed: () {},
                child: const Text(
                  "Cambiar Foto",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              const SizedBox(height: 20),

              // NOMBRE
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Nombre"),
              ),
              const SizedBox(height: 5),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // CORREO
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Correo Electrónico"),
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // TELÉFONO
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Teléfono"),
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // EDAD
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Edad"),
              ),
              const SizedBox(height: 5),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              // GÉNERO
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Género"),
              ),
              const SizedBox(height: 5),
              DropdownButtonFormField(
                value: generoSeleccionado,
                items: const [
                  DropdownMenuItem(
                    value: "Femenino",
                    child: Text("Femenino"),
                  ),
                  DropdownMenuItem(
                    value: "Masculino",
                    child: Text("Masculino"),
                  ),
                  DropdownMenuItem(
                    value: "Otro",
                    child: Text("Otro"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    generoSeleccionado = value!;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 30),

              // BOTONES
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF9E9E9E),
                      minimumSize: const Size(150, 50),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Cambios guardados correctamente"),
                        ),
                      );
                    },
                    child: const Text(
                      "Guardar Cambios",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),

                  const SizedBox(width: 15),

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
      ),
    );
  }
}