import 'package:flutter/material.dart';

class TrashOutletCard extends StatelessWidget {
  final String name;
  final String address;
  final double distanceInMeters;
  final String imageUrl; // Added image URL field

  const TrashOutletCard({
    super.key,
    required this.name,
    required this.address,
    required this.distanceInMeters,
    required this.imageUrl,
  });

  String formatDistance(double distance) {
    if (distance < 1000) {
      return '${distance.toStringAsFixed(1)} m'; // Show meters for close distances
    } else {
      return '${(distance / 1000).toStringAsFixed(1)} km'; // Show kilometers for longer distances
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row( 
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageUrl, // Use image URL
                  width: 70.0, // Set image width
                  height: 70.0, // Set image height (square)
                  fit: BoxFit.cover, // Cover the container
                ),
              ),
              SizedBox(width: 16.0), 
              Positioned( 
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 16.0),
                        SizedBox(width: 8.0),
                        Text(address),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.directions_walk_outlined, size: 16.0),
                        SizedBox(width: 8.0),
                        Text(formatDistance(distanceInMeters)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
