import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Encuentra tu comida favorita en nuestra app',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Haz tu pedido',
    'Haz tu pedido y paga en línea',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Recibe tu pedido',
    'Recibe tu pedido en la puerta de tu casa',
    'assets/images/3.png',
  )
];

class SlideInfo {
  final String title;
  final String caption;
  final String url;

  SlideInfo(this.title, this.caption, this.url);
}

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'app_tutorial';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageControllerView = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageControllerView.addListener(() {
      final page = pageControllerView.page ?? 0;

      if (!endReached && page >= slides.length - 1) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              controller: pageControllerView,
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slideData) => _Slide(
                      title: slideData.title,
                      caption: slideData.caption,
                      imageUrl: slideData.url))
                  .toList()),
          Positioned(
              right: 20,
              top: 40,
              child: TextButton(
                  onPressed: () => context.pop(), child: const Text('Saltar'))),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                      from: 15,
                      delay: const Duration(milliseconds: 100),
                      child: FilledButton(
                          onPressed: () {},
                          child: FilledButton(
                              onPressed: () => context.pop(),
                              child: const Text('Comenzar')))),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
