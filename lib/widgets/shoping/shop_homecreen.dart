import 'package:echofetch/widgets/shoping/cart_page.dart';
import 'package:echofetch/widgets/shoping/home_bloc.dart';
import 'package:echofetch/widgets/shoping/home_event.dart';
import 'package:echofetch/widgets/shoping/home_state.dart';
import 'package:echofetch/widgets/shoping/product_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _searchQuery = '';

  @override
  void initState() {
    homeBloc.add(HomeInitialEvent());
    super.initState();
  }

  HomeBloc homeBloc = HomeBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => (current is HomeActionState),
      buildWhen: (previous, current) => (current is! HomeActionState),
      listener: (context, state) {
       if(state is CartNavigateActionState){

         Navigator.push(context, MaterialPageRoute(builder: (context)=>
         const CartPage()));
       }else if(state is CartIconClickedActionState){
         ScaffoldMessenger.of(context).showSnackBar(
             const SnackBar(
                 backgroundColor: Colors.green,
                 content: Text("Item added to Cart")));
       }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case HomeLoadedState:
            final loadedState = state as HomeLoadedState;
            final filteredList = _searchQuery.isEmpty
                ? loadedState.model
                : loadedState.model
                    .where((element) => element.name
                        .toLowerCase()
                        .contains(_searchQuery.toLowerCase()))
                    .toList();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                toolbarHeight: 70,
                title: Text(
                  "Shop",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.adamina().fontFamily,
                  ),
                ),
                actions: [
                  badges.Badge(
                      position: badges.BadgePosition.topEnd(top: -10, end: -5),
                      badgeContent: Text(
                        loadedState.items.length.toString(),
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                      badgeStyle:  badges.BadgeStyle(
                          badgeColor:Theme.of(context).colorScheme.primary),
                      child: IconButton(
                        onPressed: () {
                        homeBloc.add(CartNavigateEvent());
                        },
                        icon: Image.asset(
                          "assets/images/waste.png",
                          width: 40,
                          height: 40,
                        ),
                      )),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),

              body: Container(
                margin: const EdgeInsets.only(top: 10,left: 9,right: 9),
                child: Column(
                  children: [
                  //  Search Bar 
                    Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:Theme.of(context).colorScheme.onBackground.withOpacity(0.09),
                      ),
                      child: TextField(
                          onChanged: (value) {
                            setState(() {
                              _searchQuery = value;
                            });
                          },
                          decoration: const InputDecoration(
                              hintText: "Search",
                              suffixIcon: Icon(
                                Icons.search_outlined,
                                size: 28,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ))),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Stack(children: [
                              // Banner 
                              Container(
                                height:160,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.4),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(
                                            0, 3), // changes position of shadow
                                      ),
                                    ],
                                    color:Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(18)),
                                margin: const EdgeInsets.only(top: 30),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, left: 20),
                                      child: Text(
                                        "Clearance",
                                        style: TextStyle(
                                            fontFamily: GoogleFonts.adamina()
                                                .fontFamily,
                                                color: Theme.of(context).colorScheme.onSecondary,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 0, left: 20),
                                      child: Text(
                                        "Sale",
                                        style: TextStyle(
                                            fontFamily: GoogleFonts.adamina()
                                                .fontFamily,
                                                color: Theme.of(context).colorScheme.onSecondary,
                                            fontSize: 25),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 38,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).colorScheme.onSecondary.withOpacity(0.8),
                                            borderRadius:
                                                BorderRadius.circular(18)),
                                        child: const Center(
                                            child: Text(
                                          " % Up to50%",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
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
                                  'assets/images/recycle.png',
                                  width: 190,
                                  height: 190,
                                ),
                              )
                            ]),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "See all",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            SizedBox(
                              height: 30,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: loadedState.model.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                        padding: const EdgeInsets.all(5),
                                        margin:
                                            const EdgeInsets.only(right: 18),
                                        decoration: BoxDecoration(
                                            color:
                                                Theme.of(context).colorScheme.onBackground.withOpacity(0.09),
                                            borderRadius:
                                                BorderRadius.circular(7)),
                                        child: Text(
                                          loadedState.model[index].category,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ));
                                  }),
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              children: List.generate(
                                  filteredList.length,
                                  (index) => InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ProductPage(
                                                        product:
                                                            filteredList[index],
                                                      )));
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(
                                              bottom: 0, right: 15, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    width: double.maxFinite,
                                                    // margin: const EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color:Theme.of(context).colorScheme.onBackground
                                                            .withOpacity(0.09),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15)),
                                                    child: Image.asset(
                                                      filteredList[index]
                                                          .image
                                                          .toString(),
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.15,
                                                    )),
                                              ),

                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 5,top: 2 ),
                                                      child: Text(
                                                        filteredList[index]
                                                            .name,
                                                        style:  TextStyle(
                                                            color:Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Theme.of(context).colorScheme.primary,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10),
                                                    child: Text(
                                                      filteredList[index]
                                                          .rating
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12,bottom: 13),
                                                    child: Text(
                                                      "Rs ${filteredList[index].price.toString()}",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontFamily:
                                                              GoogleFonts
                                                                      .cambo()
                                                                  .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {
                                                        homeBloc.add(
                                                            CartIconClickedEvent(
                                                                product: loadedState
                                                                        .model[
                                                                    index]));
                                                      },
                                                      icon: Image.asset(
                                                        "assets/images/recycle.png",
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

          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}