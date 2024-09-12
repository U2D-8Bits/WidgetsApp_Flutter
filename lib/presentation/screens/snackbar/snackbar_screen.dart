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


  void openDialog ( BuildContext context ){

    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text( '¿Estas seguro?' ),
        content: const Text('Et commodo exercitation cupidatat laborum. Nostrud ullamco proident veniam exercitation fugiat commodo ullamco. Sint exercitation irure ut velit cupidatat esse nostrud sunt.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Aceptar'),
          ),
        ],
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Do consectetur nostrud sunt ullamco non officia aliqua dolor Lorem occaecat eiusmod ea adipisicing ipsum. Officia ex nisi reprehenderit ipsum pariatur esse laboris excepteur minim culpa magna. Elit nisi officia consectetur sint do do occaecat fugiat aliqua. Proident eiusmod exercitation excepteur id ex aliquip. Culpa ullamco anim esse ad nostrud irure aliquip quis minim magna velit commodo officia est.'),

                    const SizedBox(height: 20),

                    const Text('Do consectetur nostrud sunt ullamco non officia aliqua dolor Lorem occaecat eiusmod ea adipisicing ipsum. Officia ex nisi reprehenderit ipsum pariatur esse laboris excepteur minim culpa magna. Elit nisi officia consectetur sint do do occaecat fugiat aliqua. Proident eiusmod exercitation excepteur id ex aliquip. Culpa ullamco anim esse ad nostrud irure aliquip quis minim magna velit commodo officia est.'),
                  ],
                );
              }, 
              child: const Text( 'Licencias usadas' )
            ),
                        FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text( 'Mostrar diálogo en pantalla' )
            ),
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