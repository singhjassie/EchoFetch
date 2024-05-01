import 'package:echofetch/common/widgets/input_box.dart';
import 'package:echofetch/features/shop/controllers/shop_controller.dart';
import 'package:echofetch/utils/constants/image_strings.dart';
import 'package:echofetch/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final controller = Get.put(ShopController());

    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: TSizes.md, vertical: TSizes.sm),
        child: Column(
          children: [
            //  Search Bar
            InputBox(
                hintText: 'Search',
                prefixIcon: Icons.search_outlined,
                isPassword: false),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(children: [
                      // Banner
                      Container(
                        height: 160,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: colorScheme.secondary,
                            borderRadius:
                                BorderRadius.circular(TSizes.borderRadiusLg)),
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 20),
                              child: Text(
                                "Clearance",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(color: colorScheme.onSecondary),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, left: 20),
                              child: Text(
                                "Sale",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(color: colorScheme.onSecondary),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 38,
                                width: 120,
                                decoration: BoxDecoration(
                                    color: colorScheme
                                        .onSecondary
                                        .withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(TSizes.borderRadiusLg)),
                                child: Center(
                                    child: Text(
                                  "Up to 50%",
                                  style: Theme.of(context).textTheme.headlineSmall,
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 150,
                        child: Image.asset(
                          TImages.recycleImg,
                          width: 190,
                          height: 190,
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        Text(
                          "See all",
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    SizedBox(
                      height: 34,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(right: 18),
                                decoration: BoxDecoration(
                                    color: colorScheme
                                        .onBackground
                                        .withOpacity(0.09),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Text(
                                  "category",
                                  style: Theme.of(context).textTheme.bodyLarge ,
                                ));
                          }),
                    ),
                    GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: List.generate(
                          5,
                          (index) => InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      bottom: 0, right: 15, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                                color: colorScheme
                                                    .onBackground
                                                    .withOpacity(0.09),
                                                borderRadius:
                                                    BorderRadius.circular(TSizes.borderRadiusLg)),
                                            child: Image.asset(
                                              TImages.recycleImg,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                            )),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5, top: 2),
                                              child: Text(
                                                "Item Name",
                                                style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: colorScheme.onBackground.withOpacity(.7)),
                                              ),
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 15,
                                            color: colorScheme
                                                .primary,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: Text(
                                              "4.5", //rating
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 12, bottom: 13),
                                            child: Text(
                                              "Rs 450", // Item Price
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily:
                                                      GoogleFonts.cambo()
                                                          .fontFamily,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                TImages.recycleImg,
                                                width: 5,
                                                height: 5,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
