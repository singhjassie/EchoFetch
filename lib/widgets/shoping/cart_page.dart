import 'package:echofetch/widgets/shoping/cart_bloc.dart';
import 'package:echofetch/widgets/shoping/model/cart_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartBloc cartBloc = CartBloc();
  double totalSum = 0;
  @override
  void initState() {
    cartBloc.add(CartInitialEvent());
    super.initState();
  }

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartBloc, CartState>(
      bloc: cartBloc,
      listenWhen: (previous, current) => (current is CartActionState),
      buildWhen: (previous, current) => (current is! CartActionState),
      listener: (context, state) {
        if (state is IncrementActionState) {
          setState(() {
            if (count >= 1) {
              count++;
            }
          });
        } else if (state is DecrementActionStates) {
          setState(() {
            count--;
          });
        }
      },
      builder: (context, state) {
        bool isEmpty = cartItems.isEmpty;

        switch (state.runtimeType) {
          case CartLoadedState:
            final loadedState = state as CartLoadedState;

            return Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Cart",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        fontFamily: GoogleFonts.cambo().fontFamily,
                        color: Colors.white),
                  ),
                  backgroundColor:
                      Theme.of(context).colorScheme.primary.withOpacity(0.8),
                ),
                body: isEmpty
                    ? Center(
                        child: Lottie.network(
                            "https://lottie.host/d71ff32e-b253-417a-a492-16d4b474b4ee/J0MipZ6P8a.json",
                            height: 280),
                      )
                    : Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                  top: 5, left: 5, right: 5),
                              child: ListView.builder(
                                itemCount: loadedState.cartList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  double amount =
                                      loadedState.cartList[index].price * count;
                                  totalSum = amount;

                                  return Column(
                                    children: [
                                      Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.grey
                                                          .withOpacity(0.2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  width: 100,
                                                  child: Image.asset(loadedState
                                                      .cartList[index].image)),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    height: 32,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.only(
                                                              left: 16),
                                                      child: Row(
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Text(
                                                              loadedState
                                                                  .cartList[index]
                                                                  .name,
                                                              style: const TextStyle(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ),
                                                          SizedBox(width: 34,),
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: IconButton(
                                                                onPressed: () {
                                                                  cartBloc.add(ItemRemoveEvent(
                                                                      removeItem:
                                                                          loadedState
                                                                              .cartList[index]));
                                                                },
                                                                icon: Icon(Icons
                                                                    .cancel)),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 16,
                                                            right: 110),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: Text(
                                                        "Rs ${loadedState.cartList[index].price.toString()}",
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: const TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 4,),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        SizedBox(
                                                          height: 28,
                                                          width: 38,
                                                          child: OutlinedButton(
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(0),
                                                            ),
                                                            onPressed: () {
                                                              cartBloc.add(DecrementEvent(
                                                                  item: loadedState
                                                                          .cartList[
                                                                      index],
                                                                  count:
                                                                      count));
                                                            },
                                                            child: const Icon(
                                                              Icons.remove,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 10,),
                                                        Text(
                                                          count.toString(),
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 18),
                                                        ),
                                                        SizedBox(width: 10,),
                                                        SizedBox(
                                                          height: 28,
                                                          width: 38,
                                                          child: OutlinedButton(
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(0),
                                                            ),
                                                            onPressed: () {
                                                              cartBloc.add(
                                                                  IncrementEvent(
                                                                      count: loadedState
                                                                          .count));
                                                            },
                                                            child: const Icon(
                                                              Icons.add,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 80,
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primary
                                    .withOpacity(0.8),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Total Amount ${totalSum}rs",
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary
                                          .withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Center(
                                    child: Text(
                                      "Buy",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ));

          default:
            return const Center(
              child: CircularProgressIndicator(),
            );
        }
      },
    );
  }
}
