import 'package:echofetch/common/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class RewardScreen extends StatelessWidget {
  const RewardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 16.0,right: 16, top: 50,bottom: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rewards',
                style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.bold
                ),),
                  InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                      child: Text(
                        '\$ 570',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).colorScheme.onSecondary,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
               ],
            ),
            const SizedBox(height: 16.0),
            CustomDropdownMenu(),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 20.0,
                  childAspectRatio: 1.3,
                ),
                itemBuilder: (context, index) {
                  return RewardCard(
                    imageUrl: 'assets/images/W.png',
                    Card: "Get this",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {

  final String imageUrl;
  final String Card;

  const RewardCard({
    required this.imageUrl,
    required this.Card,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect( 
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
                    padding: const EdgeInsets.only(left: 85, top: 90),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 7),
                            child: Text(
                              Card,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Theme.of(context).colorScheme.onSecondary,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
