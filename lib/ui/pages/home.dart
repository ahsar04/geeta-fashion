import 'dart:math';

import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              notificationIcon,
              height: 24,
              width: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              catrIcon,
              height: 24,
              width: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              favoriteIcon,
              height: 24,
              width: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              searchIcon,
              height: 24,
              width: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              menuIcon,
              height: 24,
              width: 24,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          productCategory(),
          productList(context),
        ],
      ),
    );
  }
}

Widget productCategory() {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Text(
                  'Popular',
                  style: blueTextStyle.copyWith(
                    fontWeight: extraBold,
                    fontSize: 17,
                  ),
                ),
                const Divider(
                  height: 5,
                  color: Colors.red,
                  thickness: 20,
                )
              ],
            ),
          ),
          const SizedBox(
            width: 30,
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
          const SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Women',
              style: greyTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Women',
              style: greyTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Women',
              style: greyTextStyle.copyWith(
                fontWeight: extraBold,
                fontSize: 17,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
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
    ),
  );
}

Widget productList(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height - 173,
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
                      height: 130,
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
