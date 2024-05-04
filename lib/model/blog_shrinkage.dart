import 'package:flutter/material.dart';

class BlogShrink {
  BlogShrink({
    required this.tName,
    required this.tColor,
    required this.title,
    required this.text,
    required this.author,
    required this.image,
    required this.comments,
    required this.time,
  });
  final String title;
  final String tName;
  final Color tColor;
  final String text;
  final String time;
  final String author;
  final String image;
  final int comments;
}

List<BlogShrink> allData = [
  BlogShrink(
    title: "Focus on environmental consciousness and reducing waste.",
    comments: 10,
    time: "5 mins ago",
    author: "Kamal",
    text:
        """Our Planet, Our Responsibility: Reducing Waste for a Sustainable Future
        This world is our shared home, and its health is vital for all living things. Unfortunately, our consumption habits often lead to excessive waste, harming the environment and depleting precious resources.
        Here at EchoFetch, we believe in promoting environmental consciousness and reducing waste. We strive to:
        Educate: Raise awareness about the impact of wastefulness and the importance of sustainable practices.
        Inspire: Share creative solutions and simple changes individuals can make to minimize waste in their daily lives.
        Empower: Advocate for responsible production and consumption patterns that prioritize the well-being of our planet.
        By working together, we can create a future where waste is minimized, resources are respected, and our environment thrives. Join us in this journey towards a more sustainable tomorrow!""",
    image:
        "https://images.pexels.com/photos/802221/pexels-photo-802221.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    tColor: Colors.deepOrangeAccent,
    tName: 'DESIGN',
  ),
  BlogShrink(
    title: "A mountain of discarded electronics.",
    tColor: Colors.purple,
    tName: 'DESIGN',
    comments: 10,
    time: "5 mins ago",
    author: "Jaskaran",
    text:"""A Towering Tomb of Tech: E-Waste Epidemic Threatens Our Planet

A Crushing Reality:
In this digital age, our insatiable appetite for the latest gadgets creates a dark secret: a growing mountain of discarded electronics, also known as e-waste. This colossal pile, a chilling testament to our throwaway culture, poses a significant threat to our environment and health.

Where Does It Go?
Often dumped in landfills or shipped illegally to developing countries, e-waste releases toxic chemicals like lead, mercury, and cadmium when improperly processed. These contaminants leach into the soil and water, poisoning wildlife and entering the food chain, ultimately affecting us all.

The Hidden Costs:
Beyond the immediate environmental damage, e-waste represents a loss of valuable resources. Precious metals like gold, silver, and rare earth elements, painstakingly mined, are discarded instead of being recycled. This depletion necessitates further mining, which often has devastating ecological and social consequences.

A Call to Action:
We must break free from this unsustainable cycle. Here are some ways you can contribute:

    Extend the Lifespan: Take care of your electronics, consider repairs before replacement.
    Embrace Responsible Recycling: Find certified e-waste recycling centers in your area.
    Choose Wisely: Opt for durable, long-lasting devices, support companies with sustainable practices.
    Spread Awareness: Educate yourself and others about the e-waste crisis and its solutions.

Let's work together to turn this tide of e-waste. By embracing mindful consumption and responsible disposal, we can ensure a healthier future for our planet and ourselves.""",
    image:
        "https://images.pexels.com/photos/2382894/pexels-photo-2382894.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  BlogShrink(
    title: "Make systems people want to use",
    tColor: Colors.purple,
    tName: 'DESIGN',
    comments: 10,
    time: "5 mins ago",
    author: "Pranav Ajay",
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    image:
        "https://images.pexels.com/photos/3250709/pexels-photo-3250709.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  BlogShrink(
    title: "Make systems people want to use",
    tColor: Colors.blue,
    tName: 'DESIGN',
    comments: 10,
    time: "5 mins ago",
    author: "Pranav Ajay",
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    image:
        "https://cdn.dribbble.com/users/3807693/screenshots/16959518/media/921b60038850f869f8ed703e36b8382d.jpg",
  ),
  BlogShrink(
    title: "A plastic bottle polluting a pristine ocean.",
    tColor: Colors.purple,
    tName: 'DESIGN',
    comments: 10,
    time: "5 mins ago",
    author: "Pranav Ajay",
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    image:
        "https://cdn.dribbble.com/users/3807693/screenshots/16959518/media/921b60038850f869f8ed703e36b8382d.jpg",
  ),
  BlogShrink(
    tColor: Colors.purple,
    tName: 'DESIGN',
    title: " A lush forest being cleared for industrial activities.",
    comments: 10,
    time: "5 mins ago",
    author: "Pranav Ajay",
    text:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    image:
        "https://cdn.dribbble.com/users/3807693/screenshots/16959518/media/921b60038850f869f8ed703e36b8382d.jpg",
  ),
];

// List<BlogShrink> popularData = [
//   BlogShrink(title: "t", likes: likes, comments: comments, date: date, views: views)
// ];