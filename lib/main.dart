import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Perfil(),
  ));
}

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Perfil'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const CircleAvatar(
              radius: 60,
              child: Icon(
                Icons.person,
                size: 60,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'charley marra',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text('📧 charley@email.com'),

            const Text('📞 (64) 99999-0000'),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Você agora segue esse perfil!'),
                  ),
                );
              },
              child: const Text('Seguir!!!'),
            ),
          ],
        ),
      ),
    );
  }
}