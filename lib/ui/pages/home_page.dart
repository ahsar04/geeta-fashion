import 'package:flutter/material.dart';
import 'package:geeta/models/product_model.dart';
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
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(26, 2, 0, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    '12',
                    style: whiteTextStyle.copyWith(
                      fontWeight: reguler,
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
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(26, 2, 0, 0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blueColor,
                ),
                height: 20,
                width: 15,
                child: Center(
                  child: Text(
                    '55',
                    style: whiteTextStyle.copyWith(
                      fontWeight: reguler,
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
                  size: 30,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(24, 2, 0, 0),
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
                      fontWeight: reguler,
                      fontSize: 9,
                    ),
                  ),
                ),
              )
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
            icon: const Icon(
              Icons.search_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          productCategory(context),
          productFilter(),
          const ProductsList(),
        ],
      ),
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dummyProducts = [
      {
        'id': 1,
        'name': 'Product 1',
        'description': 'This is the description for Product 1.',
        'price': 19.99,
        'imageUrl':
            'assets/images/product1.jpg', // Ganti dengan path gambar produk Anda
      },
      {
        'id': 2,
        'name': 'Product 2',
        'description': 'This is the description for Product 2.',
        'price': 29.99,
        'imageUrl':
            'assets/images/product2.jpg', // Ganti dengan path gambar produk Anda
      },
      {
        'id': 3,
        'name': 'Product 3',
        'description': 'This is the description for Product 3.',
        'price': 39.99,
        'imageUrl':
            'assets/images/product3.jpg', // Ganti dengan path gambar produk Anda
      },
      {
        'id': 4,
        'name': 'Product 4',
        'description': 'This is the description for Product 4.',
        'price': 49.99,
        'imageUrl':
            'assets/images/product4.jpg', // Ganti dengan path gambar produk Anda
      },
      // Tambahkan produk lainnya sesuai kebutuhan
    ];
    final dummyProductsModels =
        dummyProducts.map((e) => Product.fromJson(e)).toList();

    return SizedBox(
      height: MediaQuery.of(context).size.height - 182,
      child: GridView.count(
        primary: false,
        shrinkWrap: true,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 14,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        children: List<Widget>.generate(
          dummyProducts.length,
          (index) {
            final item = dummyProductsModels[index];
            return GridTile(
              child: Column(children: [
                Card(
                  color: Colors.white,
                  semanticContainer: true,
                  child: Column(
                    children: [
                      const Padding(
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
                          item.imageUrl,
                        ),
                        height: 130,
                        width: 92,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/product-detail');
                  },
                  child: Column(
                    children: [
                      Text(
                        item.name,
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
                        item.price.toString(),
                        style: greyTextStyle.copyWith(
                          fontWeight: black,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            );
          },
        ),
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
    margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
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
