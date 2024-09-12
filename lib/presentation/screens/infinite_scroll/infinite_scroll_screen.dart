import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {
  static const String name = 'infinite_scroll';

  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        loadNextPage();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;
    super.dispose();
  }

  Future loadNextPage() async {
    if (isLoading) return;
    isLoading = true;

    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    addFiveImages();
    isLoading = false;

    if (!isMounted) return;
    setState(() {});

    // Todo: Mover scroll
    moveScrollToBottom();
  }

  void addFiveImages() {
    final lastId = imagesIds.last;

    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
  }


  Future<void> onRrefresh() async {

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    if( !isMounted ) return;

    isLoading = false;
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    addFiveImages();

    setState(() {   
    });
    
  }


  void moveScrollToBottom(){

    if( scrollController.position.pixels + 150  <= scrollController.position.maxScrollExtent ) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120, 
      duration: const Duration(milliseconds: 250), 
      curve: Curves.bounceInOut
      );

  }

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Scaffold(
          body: RefreshIndicator(
            onRefresh: onRrefresh,
            child: _ListViewWidget(scrollController: scrollController, imagesIds: imagesIds),
          ),
          floatingActionButton: 
            _FloatingActionsButtons(isLoading: isLoading),
        )
    );
  }
}

class _ListViewWidget extends StatelessWidget {
  const _ListViewWidget({
    // super.key,
    required this.scrollController,
    required this.imagesIds,
  });

  final ScrollController scrollController;
  final List<int> imagesIds;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const BouncingScrollPhysics(),
      controller: scrollController,
      itemCount: imagesIds.length,
      itemBuilder: (context, index) {
        return FadeInImage(
            fit: BoxFit.cover,
            width: double.infinity,
            height: 300,
            placeholder:
                const AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage(
                'https://picsum.photos/id/${imagesIds[index]}/500/300'));
      },
    );
  }
}

class _FloatingActionsButtons extends StatelessWidget {
  const _FloatingActionsButtons({
    // super.key,
    required this.isLoading,
  });

  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: isLoading ? null : () => context.pop(),
      child: isLoading ? 
      SpinPerfect(
        infinite: true,
        child: const Icon( Icons.refresh_outlined )
      ) : FadeIn(
        child: const Icon( Icons.arrow_back_ios_new_rounded 
        ),
      ),
              );
  }
}
