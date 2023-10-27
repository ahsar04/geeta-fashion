import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Cart',
            style: blackTextStyle.copyWith(
              fontWeight: black,
              fontSize: 16,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: MediaQuery.of(context).size.height - 190,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: bgWhiteColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 100,
                                width: 100,
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/item3.png',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 210,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.close),
                                      ),
                                    ),
                                    Text(
                                      'Item Name',
                                      style: blueTextStyle.copyWith(
                                          fontSize: 14, fontWeight: bold),
                                      softWrap: true,
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'GEETA COLLECTION',
                                      style: greyTextStyle.copyWith(
                                          fontSize: 9, fontWeight: bold),
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'RP. 40.000',
                                          style: blackTextStyle.copyWith(
                                              fontSize: 16, fontWeight: black),
                                        ),
                                        SizedBox(
                                          width: 90,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                height: 35,
                                                width: 35,
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(LinearBorder.none),
                                                  ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '-',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            fontWeight: bold,
                                                            fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                '1',
                                                style: blackTextStyle.copyWith(
                                                    fontWeight: black,
                                                    fontSize: 16),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              SizedBox(
                                                height: 35,
                                                width: 35,
                                                child: TextButton(
                                                  style: ButtonStyle(
                                                    shape: MaterialStateProperty
                                                        .all(LinearBorder.none),
                                                  ),
                                                  onPressed: () {},
                                                  child: Text(
                                                    '+',
                                                    style:
                                                        blackTextStyle.copyWith(
                                                            fontWeight: bold,
                                                            fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ));
                    }),
              ),
              CustomTextButton(
                title: 'GO TO CHECKOUT',
                onPressed: () {
                  Navigator.pushNamed(context, '/payment');
                },
              )
            ],
          ),
        ));
  }
}
