import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GoogleAccount(),
    );
  }
}

class GoogleAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuenta de Google'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              title: 'Tu cuenta está protegida',
              description: 'La verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
              icon: Icons.verified_user,
              actionText: 'Ver detalles',
            ),
            Divider(color: Colors.grey),
            _buildSection(
              title: 'Verificación de privacidad',
              description: 'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
              icon: Icons.security,
              actionText: 'Realizar la Verificación de privacidad',
              actionColor: Colors.blue,
            ),
            Divider(color: Colors.grey),
            _buildSearchSection(
              title: '¿Buscas otra información?',
              searchText: 'Buscar en la Cuenta de Google',
              helpText: 'Ver las opciones de ayuda',
              feedbackText: 'Enviar comentario',
            ),
            Divider(color: Colors.grey),
            _buildFooterSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildSection({required String title, required String description, required IconData icon, String? actionText, Color? actionColor}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Icon(
              icon,
              size: 40,
              color: Colors.blue,
            ),
          ],
        ),
        if (actionText != null) ...[
          SizedBox(height: 8),
          Text(
            actionText,
            style: TextStyle(
              fontSize: 16,
              color: actionColor ?? Colors.black,
            ),
          ),
        ],
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildSearchSection({required String title, required String searchText, required String helpText, required String feedbackText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.search, color: Colors.blue, size: 40),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                searchText,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.help_outline, color: Colors.blue, size: 40),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                helpText,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Icon(Icons.comment, color: Colors.blue, size: 40),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                feedbackText,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildFooterSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: 'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos. ',
                  ),
                  TextSpan(
                    text: 'Más información.',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.help_outline,
            color: Colors.grey,
            size: 20,
          ),
          SizedBox(width: 8),
          Icon(
            Icons.security,
            color: Colors.blue,
            size: 40,
          ),
        ],
      ),
    );
  }
}
