import 'dart:collection';

import 'package:echofetch/features/pickup/models/location.dart';
import 'package:echofetch/features/pickup/models/request.dart';
import 'package:echofetch/features/pickup/models/waste_item.dart';
import 'package:echofetch/common/widgets/choose_location_step.dart';
import 'package:echofetch/common/widgets/confirm_details_step.dart';
import 'package:echofetch/common/widgets/select_items_step.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';

class NewRequestScreen extends StatefulWidget {
  const NewRequestScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _NewRequestScreenState();
  }
}

class _NewRequestScreenState extends State<NewRequestScreen> {
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
    ColorScheme colorScheme = Theme.of(context).colorScheme;
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

    return Scaffold(
      appBar: AppBar(title: Text(currentStepName!),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              SizedBox(
                height: 75,
                child: EasyStepper(
                  activeStep: _activeStep,
                  stepShape: StepShape.circle,
                  // stepBorderRadius: 4,
                  borderThickness: 3,
                  activeStepBackgroundColor: colorScheme.onBackground.withOpacity(.3),
                  stepRadius: 24,
                  finishedStepBorderColor: colorScheme.primaryContainer,
                  activeStepBorderColor: colorScheme.primaryContainer,
                  finishedStepBackgroundColor: colorScheme.primaryContainer.withAlpha(150),
                  showLoadingAnimation: false,
                  onStepReached: (index) => setState(() => _activeStep = index),
                  steps: [
                    EasyStep(
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Icon(
                          Icons.select_all,
                          color: colorScheme.onBackground,
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: colorScheme.onBackground,
                        ),
                      ),
                    ),
                    EasyStep(
                      customStep: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Icon(
                          Icons.done_all,
                          color: colorScheme.onBackground,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: currentStepWidget!),
            ],
          ),
        ),
      ),
    );
  }
}
