import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoogleAccount(),
    );
  }
}

class GoogleAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuenta de Google', 
          style: 
            TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue[800],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection(
              title: 'Tu cuenta está protegida',
              description: 'La verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
              icon: Icons.verified_user,
              actionText: 'Ver detalles',
              actionColor: Colors.blue,
            ),
            Divider(color: Colors.grey[200]),
            _buildSection1(
              title: 'Verificación de privacidad',
              description: 'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
              icon: Icons.security,
              actionText: 'Realizar la Verificación de privacidad',
              actionColor: Colors.blue,
            ),
            Divider(color: Colors.grey[200]),
            _buildSearchSection(
              title: '¿Buscas otra información?',
              searchText: 'Buscar en la Cuenta de Google',
              helpText: 'Ver las opciones de ayuda',
              feedbackText: 'Enviar comentario',
            ),
            Divider(color: Colors.grey[200]),
            _buildFooterSection(
              icon: Icons.security,
              icons: Icons.safety_check,
            ),
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
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    description,
                    style: TextStyle(fontSize: 13.5),
                  ),
                ],
              ),
            ),
            Icon(
              icon,
              size: 80,
              color: Colors.green[800],
            ),
          ],
        ),
        if (actionText != null) ...[
          SizedBox(height:35),
          Text(
            actionText,
            style: TextStyle(
              fontSize: 13.5,
              color: actionColor ?? Color.fromARGB(255, 69, 69, 69),
            ),
          ),
        ],
        SizedBox(height: 16),
      ],
    );
  }
  Widget _buildSection1({required String title, required String description, required IconData icon, String? actionText, Color? actionColor}) {
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
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    description,
                    style: TextStyle(fontSize: 13.5),
                  ),
                ],
              ),
            ),
            Icon(
              icon,
              size: 80,
              color: Colors.blue,
            ),
          ],
        ),
        if (actionText != null) ...[
          SizedBox(height: 35),
          Text(
            actionText,
            style: TextStyle(
              fontSize: 13.5,
              color: actionColor ?? Colors.black,
            ),
          ),
        ],
        SizedBox(height: 25),
      ],
    );
  }

  Widget _buildSearchSection({required String title, required String searchText, required String helpText, required String feedbackText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Icon(Icons.search, color: Colors.black, size: 20),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                searchText,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Icon(Icons.chevron_right)
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Icon(Icons.help_outline, color: Colors.black, size: 20),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                helpText,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Icon(Icons.chevron_right)
          ],
        ),
        SizedBox (height: 20),
        Row(
          children: [
            Icon(Icons.comment, color: Colors.black, size: 20),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                feedbackText,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Icon(Icons.chevron_right)
          ],
        ),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildFooterSection({required IconData icons,required IconData icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 69, 69, 69),
                ),
                children: [                 
                  TextSpan(
                    text: 'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos. ',
                  ),
                  WidgetSpan(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Más información ',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.help_outline,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Icon(
            icon,
            color: Colors.blue,
            size: 50,
          ),
        ],
      ),
    );
  }
}
