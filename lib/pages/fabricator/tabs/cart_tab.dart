import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:steel_trap_app/database/shopping_cart.dart';

class cart_tab extends StatefulWidget {
  const cart_tab({
    Key? key,
  }) : super(key: key);

  @override
  State<cart_tab> createState() => _cart_tabState();
}

class _cart_tabState extends State<cart_tab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xffEFEEEF),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 9,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Order Summary:',
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black38),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 80*cart.length.toDouble(),
                      // color: Colors.black12,
                      child: ListView.builder(
                        itemCount: cart.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 4,
                            child: Container(
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      child: ClipRRect(
                                        child: Image.asset(
                                          cart[index].imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                      flex: 3,
                                      child: Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.only(left: 10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              cart[index].title,
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              cart[index].price,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 4,
                                            ),
                                          ],
                                        ),
                                      )),
                                  Flexible(
                                      flex: 1,
                                      child: Center(
                                          child: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  cart.removeAt(index);
                                                });
                                              },
                                              icon: Icon(Icons.remove)))),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                'Total: 99999.99',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54),
                              ),
                              Text(
                                'DUE: 99999.99',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              // color: Colors.yellow,
                              child: Center(
                                  child: Text(
                                'Promo Code',
                                style: TextStyle(color: Colors.black38, fontWeight: FontWeight.w700, fontSize: 20),
                              )),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff1C1C27),
                                ),
                                child: Center(
                                    child: Text(
                                  'Promo Code',
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * .13,
                  width: MediaQuery.of(context).size.width * .75,
                  decoration: BoxDecoration(
                    color: Color(0xff1C1C27),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text(
                    'Proceed to Checkout.',
                    style: TextStyle(
                        color: Color(0xffEFEEEF),
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
