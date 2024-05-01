import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:echofetch/features/pickup/screens/new_request_screen.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _PickupScreenState();
  }
}

class _PickupScreenState extends State<PickupScreen> {
  void _navigateToNewRequestScreen() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewRequestScreen(),));
  }

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: _navigateToNewRequestScreen,
                  child: Card(
                    color: colorScheme.primary,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            TImages.createRequestImg,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Create Request',
                                style: GoogleFonts.lato().copyWith(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                            color: colorScheme.primary,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 8,
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      TImages.trackOrderImg),
                                       
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    'Track Requests',
                                    style: GoogleFonts.lato(
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                            color: colorScheme.primary,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                      TImages.reqestHistoryImg),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  child: Text(
                                    'Request History',
                                    style: GoogleFonts.lato(
                                        fontSize: 16),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
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

// 214, 224, 222
