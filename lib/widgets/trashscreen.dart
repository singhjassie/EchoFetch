import 'package:echofetch/model/trash_outlet.dart';
import 'package:echofetch/widgets/blog/blog_explore.dart';
import 'package:echofetch/widgets/section_header.dart';
import 'package:echofetch/widgets/trashoutletcard.dart';
import 'package:flutter/material.dart';
//  eh vv kamal ne bnayii si 
class TrashScreen extends StatelessWidget {

List<TrashOutlet> getTrashOutlets() {
 
  return [
    TrashOutlet(
      name: 'Main Street Trash',
      address: '123 Main St',
      distanceInMeters: 250.0,
      imageUrl: 'assets/images/trash2.jpeg',
    ),
    TrashOutlet(
      name: 'Central Park Recycling',
      address: 'Central Park, West Side',
      distanceInMeters: 800.0,
      imageUrl: 'assets/images/trash1.jpeg', // Consider using PNG for non-photographic images
    ),
    TrashOutlet(
      name: 'Elm Composting Facility',
      address: '100 Elm St',
      distanceInMeters: 1500.0,
      imageUrl: 'assets/images/trash3.jpeg', 
    ),
  ];
}

  @override
  Widget build(BuildContext context) {
    final trashOutlets = getTrashOutlets();
    return Padding(
      padding: const EdgeInsets.only(
        left: 2.0,
        top: 20.0,
        bottom: 15.0,
      ),
      child: Column(
        children: [
           Padding(
            padding: EdgeInsets.only(left: 18.0,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionHeader(title: 'Nearby Outlets'),
                InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) =>  BlogExploreHome()));
              }, 
              child: const Text(
                'View More',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
              ],
            ),
          ),
                  SizedBox(
                    height: 122,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal, // Set horizontal scrolling
                      itemCount: trashOutlets.length,
                      itemBuilder: (context, index) {
                        final trashOutlet = trashOutlets[index];
                        return TrashOutletCard(
                          name: trashOutlet.name,
                          address: trashOutlet.address,
                          distanceInMeters: trashOutlet.distanceInMeters,
                          imageUrl: trashOutlet.imageUrl,
                        );
                      },
                    ),
                  ),
                ],
              ),
            
          );
    
  }
}
