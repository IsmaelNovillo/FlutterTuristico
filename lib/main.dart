import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Text('Ubicaciones'),
              TitleSection(
                  name: 'Oeschinen Lake Campground',
                  location: 'Kandersteg, Switzerland'),
              ImageSection(image: 'images/lago.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'Ubicado en el corazón de los Alpes suizos, el campamento Oeschinen Lake ofrece vistas impresionantes y actividades al aire libre como senderismo, pesca y paseos en bote.'),
              TitleSection(name: 'El Panecillo', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/Panecillo.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'El Panecillo es un icono de Quito, una colina con una estatua gigante de la Virgen de Quito que ofrece vistas panorámicas de la ciudad.'),
              TitleSection(name: 'La Carolina', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/carolina.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'Parque La Carolina es un amplio espacio verde en el centro de Quito, perfecto para actividades recreativas, deportes y eventos culturales.'),
              TitleSection(name: 'La Ronda', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/RONDA.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'La Ronda es una calle histórica en el centro de Quito, conocida por su ambiente bohemio, tiendas de artesanías, y restaurantes tradicionales.'),
              TitleSection(name: 'San Francisco', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/fran.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'La Plaza de San Francisco es una de las plazas más antiguas y emblemáticas de Quito, rodeada de arquitectura colonial y la impresionante Iglesia de San Francisco.'),
              TitleSection(name: 'Plaza Grande', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/plaza.jpeg'),
              ButtonSection(),
              TextSection(
                  description:
                      'La Plaza Grande, también conocida como Plaza de la Independencia, es el corazón político y cultural de Quito, rodeada de importantes edificios históricos.'),
              TitleSection(name: 'Guápulo', location: 'Quito, Ecuador'),
              ImageSection(image: 'images/guapulo.png'),
              ButtonSection(),
              TextSection(
                  description:
                      'Guápulo es un pintoresco barrio colonial en Quito, conocido por su iglesia histórica, estrechas calles empedradas y vistas espectaculares del valle.'),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 226, 230, 11),
          ),
          const Text('69'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 400,
      fit: BoxFit.cover,
    );
  }
}
