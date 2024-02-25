import 'package:echofetch/model/request.dart';
import 'package:echofetch/widgets/detail_text_widget.dart';
import 'package:flutter/material.dart';

class ConfirmDetailsStep extends StatefulWidget {
  ConfirmDetailsStep({
    super.key,
    required this.requestDetails,
    required this.previousStep,
  });
  final void Function() previousStep;
  final Request requestDetails;
  @override
  State<ConfirmDetailsStep> createState() => _ConfirmDetailsStepState();
}

class _ConfirmDetailsStepState extends State<ConfirmDetailsStep> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 8,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 26,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(colors: [
                Theme.of(context).colorScheme.secondaryContainer.withAlpha(255),
                Theme.of(context).colorScheme.secondaryContainer.withAlpha(150),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withAlpha(255),
                            Theme.of(context)
                                .colorScheme
                                .primary
                                .withAlpha(155),
                          ],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                        )),
                    child: Icon(
                      Icons.done,
                      size: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                OrderDetail(
                    label: 'Request ID  :   ', value: widget.requestDetails.id),
                OrderDetail(
                    label: 'Request Date  :   ',
                    value: widget.requestDetails.formattedRequestDate),
                OrderDetail(
                    label: 'Expected Pickup Date  :   ',
                    value: widget.requestDetails.formattedExpectedDate),
                OrderDetail(
                    label: 'Selected Items  :   ',
                    value: widget.requestDetails.formattedSelectedItems),
                OrderDetail(
                    label: 'Address  :   ',
                    value: widget.requestDetails.chosenLocation),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                      onPressed: widget.previousStep,
                      child: Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Request Submitted'),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  duration: const Duration(seconds: 3)
                ),
              );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        foregroundColor:
                            Theme.of(context).colorScheme.onPrimary,
                      ),
                      child: Text(
                        'Confirm',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
