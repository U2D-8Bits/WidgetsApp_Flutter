import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgetapp/config/menu/menu_items.dart';
import 'package:widgetapp/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final scaffoldKey = GlobalKey<ScaffoldState>();
    
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Flutter + Material 3'),
      ),
      body: const _HomeView(),
      drawer: SideMenu( scaffoldKey: scaffoldKey, ),
    );
  }
}

class _HomeView extends StatelessWidget {

  const _HomeView();


  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItem.length,
      itemBuilder: (context, index) {
        final menuItem = appMenuItem.toList()[index];
        return _CustomListTile(menuItem: menuItem);
      },
    );


  }
}

class _CustomListTile extends StatelessWidget {


  const _CustomListTile({
    required this.menuItem,
  });

  final MenuItems menuItem;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      trailing: Icon( Icons.arrow_forward_ios_rounded, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
      onTap: (){
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: ( context ) => const ButtonsScreen()
        //   )
        // );

        context.push( menuItem.url );
      },
    );
  }
}