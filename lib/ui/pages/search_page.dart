import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Producct',
          style: blackTextStyle.copyWith(
            fontWeight: black,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: bgWhiteColor,
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
            ),
          ),
          const Text(
            '139 Items found for “Hoodies”',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFA1A1A1),
              fontSize: 14,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          productList(context)
        ],
      ),
    );
  }
}

Widget productList(BuildContext context) {
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
        12,
        (index) {
          return GridTile(
            child: Column(children: [
              const Card(
                color: Colors.white,
                semanticContainer: true,
                child: Column(
                  children: [
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
                      height: 18,
                    ),
                  ],
                ),
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
            ]),
          );
        },
      ),
    ),
  );
}
