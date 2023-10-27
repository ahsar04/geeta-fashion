import 'dart:math';

import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: Image.asset(
          darkLogo,
          height: 20,
          width: 71,
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_outlined,
                  size: 28,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    '5',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 9,
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 28,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    '5',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 9,
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/favorite');
                },
                icon: const Icon(
                  Icons.favorite_outline,
                  size: 28,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    '5',
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 9,
                    ),
                  ),
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_outlined,
              size: 28,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          productCategory(context),
          productFilter(),
          productList(context),
        ],
      ),
    );
  }
}

Widget productCategory(BuildContext context) {
  return Container(
    margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            'Popular',
            style: blueTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 17,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Mens',
            style: greyTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 17,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/product-detail');
          },
          child: Text(
            'Women',
            style: greyTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 17,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sale',
            style: greyTextStyle.copyWith(
              fontWeight: extraBold,
              fontSize: 17,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget productFilter() {
  return Container(
    margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
    child: Row(
      children: [
        Text(
          'FILTER & SORT',
          style: blackTextStyle.copyWith(
            fontWeight: black,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            sortToolIcon,
            height: 24,
            width: 24,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            gridViewIcon,
            height: 24,
            width: 24,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            sortToolIcon,
            height: 24,
            width: 24,
          ),
        ),
      ],
    ),
  );
}

Widget productList(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height - 212,
    child: GridView.count(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      crossAxisSpacing: 14,
      mainAxisSpacing: 88,
      crossAxisCount: 2,
      children: List<Widget>.generate(
        12,
        (index) {
          return GridTile(
            child: Column(
              children: [
                const Card(
                  color: Colors.white,
                  semanticContainer: true,
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage(
                              favoriteIcon,
                            ),
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage(
                        'assets/images/item1.png',
                      ),
                      height: 49,
                      width: 92,
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ]),
                ),
                const SizedBox(
                  height: 18,
                ),
                Text(
                  'Product $index',
                  style: blackTextStyle.copyWith(
                    fontWeight: black,
                    fontSize: 14,
                  ),
                  softWrap: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Rp. 40.000',
                  style: greyTextStyle.copyWith(
                    fontWeight: black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    ),
  );
}
