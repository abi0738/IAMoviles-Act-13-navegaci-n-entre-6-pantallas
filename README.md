# myapp

A new Flutter project.

## Getting Started
## 
este es mi main import 'package:flutter/material.dart';
import 'package:myapp/widgets/catalogo.dart';
import 'package:myapp/widgets/mis_clases.dart';
import 'package:myapp/widgets/perfil.dart';

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
        '/': (context) => const CatalogoScreen(), // 👈 ahora inicia en Catálogo
        '/mis_clases': (context) => const MisClasesScreen(),
        '/perfil': (context) => const PerfilScreen(),
      },
    );
  }
}  este es mi catalogo.dart import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: 320,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFFFCDD4),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Column(
                children: [
                  Text("1. Salsa", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 12),
                  Text("2. Hip Hop", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 12),
                  Text("3. Ballet", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 12),
                  Text("4. K-Pop", style: TextStyle(fontSize: 20)),
                ],
              ),
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
                Navigator.pushNamed(context, '/perfil');
              },
              child: const Text(
                "Ver Perfil",
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
                Navigator.pushNamed(context, '/mis_clases'); // ✅ Ahora sí va a Mis Clases
              },
              child: const Text(
                "Mis Clases",
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
                "Cerrar Sesión",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}  este es mi mis clases .dart import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 30),

              const Text(
                "Lista de Clases Inscritas ",
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
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
    );
  }
}  y este es mi perfil .dart import 'package:flutter/material.dart';

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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              const SizedBox(height: 30),

              const Text(
                "Lista de Clases Inscritas ",
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: const BorderSide(color: Colors.black),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
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
    );
  }
} ya tenemos en total 3 paginas ahora vamos a hacer 3 mas para que sean 6 vamos a hacer un login usuario , tiene que tener un texto correo y una caja donde pueda yo ingresar texto tipo el correo y enseguida un contraseña y donde pueda yo ingresar la contraseña y al final quiero dos botones uno izquierda y otro derecha 1 que diga entrar y 2 que diga regresar , posteriormente quiero que me lleve a catalogo.dart el que ya tenemos creado , enseguida quiero acomoda , el ver perfil,que ya tengo creado ,luego que me lleve a el editar perfil , quiero que tenga un encabezado que diga editar perfil , nombre , contraseña ya sebes tu cositas para editarlo , luego dos botones finales uno que diga guardar cambios 1 , 2 regresar , acomoda el mis clases.dart donde va , despues quiero un detalle salsa es otra pantalla el encabezado que diga detalle salsa, texto descripcio, cajita con la descripcion, nivel cajita con el nivel , precio cajita , con el precio , botones izquierda derecha , 1 iscribirme , regresar 2 , respeta el diseño que ya tenemos a todas las pantallas quiero que atras en el fondo les agregues los simbolos de musiquita y respeta el color de encabezado y botones , sigue el diseño como el que ya tenemos , los botones rectangulares , iguales que los que ya tengo y el detalle salsa q sea cuando le pique a salsa dame todo completo todos lo 6 codigos

<img width="872" height="380" alt="image" src="https://github.com/user-attachments/assets/dac23d6a-913c-423b-9f9d-b6c9631e6449" />
<img width="894" height="443" alt="image" src="https://github.com/user-attachments/assets/dfeafba5-9320-48cf-b515-a0f7be627b80" />
<img width="907" height="439" alt="image" src="https://github.com/user-attachments/assets/469cbca7-f9c1-4265-98f4-45d8c1d42751" />
<img width="898" height="444" alt="image" src="https://github.com/user-attachments/assets/98731360-66f7-47f8-9e82-cdc5119ad9ff" />
<img width="905" height="442" alt="image" src="https://github.com/user-attachments/assets/1f56a371-43ec-4a34-835b-d437d91ca151" />
<img width="972" height="481" alt="image" src="https://github.com/user-attachments/assets/d1a1349e-4f1d-4360-8af3-feb88fd65bb7" />

<img width="436" height="716" alt="image" src="https://github.com/user-attachments/assets/4cf25e3d-42a2-4454-a53e-9337d3ab9cc3" />
<img width="457" height="721" alt="image" src="https://github.com/user-attachments/assets/b5a348c1-7e47-4ca5-ac06-8038e99cb3fb" />
<img width="482" height="711" alt="image" src="https://github.com/user-attachments/assets/ac938c2f-d670-4f74-9532-e5938e91625d" />
<img width="488" height="702" alt="image" src="https://github.com/user-attachments/assets/98fb801a-b6b9-4459-93ba-267e37046b72" />
<img width="427" height="702" alt="image" src="https://github.com/user-attachments/assets/3a36a414-aaea-4a69-9d82-19394913982e" />
<img width="438" height="697" alt="image" src="https://github.com/user-attachments/assets/3c7d0a2e-ce90-4fe4-bb19-add97b5d40fd" />










