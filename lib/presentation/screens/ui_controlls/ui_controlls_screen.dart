import 'package:flutter/material.dart';

class UIControllsScreen extends StatelessWidget {
  static const String name = 'ui_controlls';

  const UIControllsScreen({super.key});

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
          title: const Text('Controles UI'),
        ),
        body: const _UIControllsView());
  }
}

class _UIControllsView extends StatefulWidget {
  const _UIControllsView();

  @override
  State<_UIControllsView> createState() => _UIControllsViewState();
}

enum Transportation { car, bike, plane, boat, train }

class _UIControllsViewState extends State<_UIControllsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Activar modo desarrollador'),
          value: isDeveloper,
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Transportation'),
          subtitle: const Text('Select your transportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Transportation by car'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                title: const Text('By Bike'),
                subtitle: const Text('Transportation by bike'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Transportation by plane'),
                value: Transportation.bike,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.bike;
                    })),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Transportation by boat'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    }))
          ],
        ),
        
        
        CheckboxListTile(
          title: const Text('Quiere Desayunar?'),
          value: wantsBreakfast, 
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Quiere Almorzar?'),
          value: wantsLunch, 
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
                CheckboxListTile(
          title: const Text('Quiere Merendar?'),
          value: wantsDinner, 
          onChanged: (value) => setState(() {
            wantsDinner = !wantsDinner;
          }),
        ),
      ],
    );
  }
}
