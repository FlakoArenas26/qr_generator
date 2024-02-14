import 'package:flutter/material.dart';
import 'package:qr_generator/screens/dashboard_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Aquí puedes agregar tu lógica de autenticación personalizada.
    // Por ejemplo, puedes comparar los valores ingresados con una lista de usuarios predefinidos o con una base de datos local.

    String username = _usernameController.text;
    String password = _passwordController.text;

    // Verificar si las credenciales son válidas (esto es solo un ejemplo, debes implementar tu propia lógica de autenticación).
    if (username == 'usuario' && password == 'contraseña') {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => DashboardPage(username: username)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error de inicio de sesión: Credenciales inválidas'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Nombre de usuario'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Contraseña'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Iniciar Sesión'),
            ),
          ],
        ),
      ),
    );
  }
}
