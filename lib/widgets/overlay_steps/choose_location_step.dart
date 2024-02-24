import 'package:echofetch/data/LocationsList.dart';
import 'package:echofetch/widgets/location_widget.dart';
import 'package:flutter/material.dart';

class ChooseLocationStep extends StatefulWidget {
  const ChooseLocationStep({super.key, required this.onNext});
  final void Function(String) onNext;

  @override
  State<StatefulWidget> createState() {
    return _ChooseLocationStepState();
  }
}

class _ChooseLocationStepState extends State<ChooseLocationStep> {
  String? _chosenLocationId;

  void _chooseLocation(String id) {
    setState(() {
      _chosenLocationId = id;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...locationsList.map(
          (location) => LocationWidget(
            location: location,
            isSelected: _chosenLocationId == location.id,
            onTap: _chooseLocation,
          ),
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 50,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            widget.onNext(_chosenLocationId!);
          },
          child: Text(
            'Next',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
