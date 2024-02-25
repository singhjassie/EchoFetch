import 'dart:collection';

import 'package:echofetch/model/location.dart';
import 'package:echofetch/model/request.dart';
import 'package:echofetch/model/waste_item.dart';
import 'package:echofetch/widgets/overlay_steps/choose_location_step.dart';
import 'package:echofetch/widgets/overlay_steps/confirm_details_step.dart';
import 'package:echofetch/widgets/overlay_steps/select_items_step.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';

class NewRequestOverlay extends StatefulWidget {
  const NewRequestOverlay({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewRequestOverlayState();
  }
}

class _NewRequestOverlayState extends State<NewRequestOverlay> {
  int _activeStep = 0;
  HashSet<WasteItem> _selectedItems = HashSet();
  Request? _requestDetails;

  void _saveSelectedItems(HashSet<WasteItem> selectedItems) {
    setState(() {
      _selectedItems = selectedItems;
      _activeStep++;
    });
  }

  void _saveLocation(Location location) {
    setState(() {
      _requestDetails = Request(
          selectedItems: _selectedItems,
          requestDate: DateTime.now(),
          chosenLocation: location.fullAddress);
      _activeStep++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? currentStepName;
    Widget? currentStepWidget;
    if (_activeStep == 0) {
      currentStepName = 'Select Items';
      SelectItemStep? _selectItemStep =
          SelectItemStep(onNext: _saveSelectedItems);
      currentStepWidget = _selectItemStep;
    } else if (_activeStep == 1) {
      currentStepName = 'Choose Location';
      ChooseLocationStep? _chooseLocationStep =
          ChooseLocationStep(onNext: _saveLocation);
      currentStepWidget = _chooseLocationStep;
    } else if (_activeStep == 2) {
      currentStepName = 'Confirm Details';
      ConfirmDetailsStep? _confirmDetailsStep = ConfirmDetailsStep(
        requestDetails: _requestDetails!,
        previousStep: () {
          setState(() {
            _activeStep--;
          });
        },
      );
      currentStepWidget = _confirmDetailsStep;
    }
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              currentStepName!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: colorScheme.secondary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            EasyStepper(
              activeStep: _activeStep,
              stepShape: StepShape.circle,
              // stepBorderRadius: 4,
              borderThickness: 3,
              stepRadius: 24,
              finishedStepBorderColor: colorScheme.primary,
              finishedStepBackgroundColor: colorScheme.primary.withAlpha(150),
              showLoadingAnimation: true,
              onStepReached: (index) => setState(() => _activeStep = index),
              steps: [
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Icon(
                      Icons.select_all,
                      color: Colors.black,
                    ),
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                EasyStep(
                  customStep: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Icon(
                      Icons.done_all,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(child: currentStepWidget!),
          ],
        ),
      ),
    );
  }
}
