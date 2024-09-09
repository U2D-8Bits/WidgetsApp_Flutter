import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'},
  {'elevation': 0.1, 'label': 'Elevation 1'},
  {'elevation': 0.2, 'label': 'Elevation 2'},
  {'elevation': 0.3, 'label': 'Elevation 3'},
  {'elevation': 0.4, 'label': 'Elevation 4'},
  {'elevation': 0.5, 'label': 'Elevation 5'},
];

class CardScreen extends StatelessWidget {
  static const String name = 'cards';

  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: colors.primary,
            ),
          ),
          title: const Text('Tarjetas'),
        ),
        body: const _CardsView());
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CardType1(
                label: card['label'],
                elevation: card['elevation'],
              )),
          ...cards.map((card) => _CardType2(
                label: card['label'],
                elevation: card['elevation'],
              )),
          ...cards.map((card) => _CardType3(
                label: card['label'],
                elevation: card['elevation'],
              )),
          ...cards.map((card) => _CardType4(
                label: card['label'],
                elevation: card['elevation'],
              )),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_outlined))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(label, style: const TextStyle(fontSize: 20))),
            ],
          )),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: colors.outline,
          )),
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_outlined))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('$label - outline',
                      style: const TextStyle(fontSize: 20))),
            ],
          )),
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      color: colors.onSurfaceVariant,
      elevation: elevation,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert_outlined))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('$label - Fill',
                      style: const TextStyle(fontSize: 20))),
            ],
          )),
    );
  }
}

class _CardType4 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType4({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      elevation: elevation,
      child: Stack(
        children: [
          Image.network(
            'https://picsum.photos/id/${elevation.toInt()}/600/350',
            height: 350,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(20))),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_outlined,
                      color: Colors.black)),
            ),
          )
        ],
      ),
    );
  }
}
