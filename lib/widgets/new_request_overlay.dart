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
  int activeStep = 0;
  String currentStep = 'Select Items';

  @override
  Widget build(BuildContext context) {
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
              currentStep,
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
              activeStep: activeStep,
              stepShape: StepShape.circle,
              stepBorderRadius: 50,
              borderThickness: 3,
              stepRadius: 24,
              finishedStepBorderColor: colorScheme.primary,
              finishedStepBackgroundColor: colorScheme.primary.withAlpha(150),
              showLoadingAnimation: true,
              onStepReached: (index) => setState(() => activeStep = index),
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
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                ),
                children: const [
                  Text('23'),
                  Text('23'),
                  Text('23'),
                  Text('23'),
                  Text('23'),
                  Text('23'),
                  Text('23'),
                  Text('23'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final int itemNo;

  const ItemTile(
    this.itemNo,
  );

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.red;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        tileColor: color.withOpacity(0.3),
        onTap: () {},
        leading: Container(
          width: 50,
          height: 30,
          color: color.withOpacity(0.5),
          child: Placeholder(
            color: color,
          ),
        ),
        title: Text(
          'Product $itemNo',
          key: Key('text_$itemNo'),
        ),
      ),
    );
  }
}


            // finishedStepBorderColor: colorScheme.primary,
            // finishedStepTextColor: colorScheme.primary,
            // finishedStepBackgroundColor: colorScheme.primary,
            // activeStepIconColor: colorScheme.primary,

          // FlutterStepIndicator(
          //   onChange: (int index) {},
          //   list: [1,2,3],
          //   page: step,
          //   height: 25,
          //   positiveColor: Theme.of(context).colorScheme.primary,
          //   progressColor: Theme.of(context).colorScheme.secondary,
          //   // negativeColor: Theme.of(context).colorScheme.errorContainer,
          // ),


  // String currentStep = 'Select Items';
  // Widget currentStepWidget = SelectItemStep();
  // int step = 0;
  // void goToNextStep(int step){
  // if(step==0){
  //   currentStep = 'Select Items';
  //   currentStepWidget = SelectItemStep();
  // }
  // else if(step==1){
  //   currentStep = 'Select Address';
  //   currentStepWidget = SelectItemStep();
  // }
  // else{
  //   currentStep = 'Summary';
  //   currentStepWidget = SelectItemStep();
  // }
  // }
  