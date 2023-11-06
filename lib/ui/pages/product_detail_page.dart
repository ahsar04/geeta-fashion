import 'package:flutter/material.dart';
import 'package:geeta/shared/theme.dart';
import 'package:geeta/ui/widgets/button.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgWhiteColor,
      appBar: AppBar(
        backgroundColor: bgWhiteColor,
        actions: [
          Container(
            height: 46,
            width: 46,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(50)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
          ),
          Text('coba',style: TextStyle(color: blackColor,),),
          const SizedBox(
            width: 15,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 179.9,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Center(
                      child: Image(
                        image: AssetImage(
                          'assets/images/item1.png',
                        ),
                        height: 225,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      constraints: const BoxConstraints(
                          minHeight: 430, minWidth: double.infinity),
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Geeta Mens',
                            style: blackTextStyle.copyWith(
                              fontWeight: reguler,
                              fontSize: 13,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Purple Hoodie',
                                style: blackTextStyle.copyWith(
                                  fontWeight: black,
                                  fontSize: 24,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                'Rp. 40.000',
                                style: blackTextStyle.copyWith(
                                  fontWeight: bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 5.4,
                              ),
                              const Image(
                                image: AssetImage(
                                  starInActiveIcon,
                                ),
                                height: 14,
                                width: 13.24,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '(4.5)',
                                style: greyTextStyle.copyWith(
                                  fontWeight: reguler,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 90,
                                decoration: BoxDecoration(
                                    border: Border.all(color: bgGreyColor)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              LinearBorder.none),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          '-',
                                          style: blackTextStyle.copyWith(
                                              fontWeight: bold, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '1',
                                      style: blackTextStyle.copyWith(
                                          fontWeight: black, fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    SizedBox(
                                      height: 35,
                                      width: 35,
                                      child: TextButton(
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all(
                                              LinearBorder.none),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          '+',
                                          style: blackTextStyle.copyWith(
                                              fontWeight: bold, fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 46,
                                width: 46,
                                decoration: BoxDecoration(
                                    color: bgWhiteColor,
                                    borderRadius: BorderRadius.circular(50)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.share),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          Text(
                            'DESCRIPTION',
                            style: blackTextStyle.copyWith(
                              fontWeight: extraBold,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
                            style: greyTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'SELECT SIZE',
                            style: blackTextStyle.copyWith(
                              fontWeight: extraBold,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(blueColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'S',
                                    style: whiteTextStyle.copyWith(
                                      fontWeight: reguler,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'M',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: reguler,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'L',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: reguler,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'XL',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: reguler,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 48,
                                width: 48,
                                child: TextButton(
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(bgWhiteColor),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'XXL',
                                    style: blackTextStyle.copyWith(
                                      fontWeight: reguler,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: whiteColor,
              child: CustomTextButton(
                hight: 54,
                title: 'ADD TO CART',
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
