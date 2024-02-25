import 'package:echofetch/data/locations_list.dart';
import 'package:echofetch/model/location.dart';
import 'package:echofetch/widgets/location_widget.dart';
import 'package:flutter/material.dart';

class ChooseLocationStep extends StatefulWidget {
  const ChooseLocationStep({super.key, required this.onNext});
  final void Function(Location) onNext;

  @override
  State<StatefulWidget> createState() {
    return _ChooseLocationStepState();
  }
}

class _ChooseLocationStepState extends State<ChooseLocationStep> {
  Location? _chosenLocation;

  void _chooseLocation(Location location) {
    setState(() {
      _chosenLocation = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...locationsList.map(
          (location) => LocationWidget(
            location: location,
            isSelected: _chosenLocation == location,
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
            widget.onNext(_chosenLocation!);
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
