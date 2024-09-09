import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  
  static const String name = 'Snackbar y Diálogos';
  
  const SnackbarScreen({super.key});

  void showSnackbar( BuildContext context ){

    ScaffoldMessenger.of( context ).showSnackBar(
      SnackBar(
        content: const Text('Hola, soy un Snackbar'),
        action: SnackBarAction(
          label: 'Cerrar',
          onPressed: (){},
        ),
        duration: const Duration( seconds: 2 ),
      )
    );
  }

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
        title: const Text( name ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Snackbar'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showSnackbar(context),
        label: const Text( 'Mostrar Snackbar' ),
        icon: const Icon( Icons.remove_red_eye_outlined ),
      ),
    );
  }
}