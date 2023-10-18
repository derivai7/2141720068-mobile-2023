import 'package:flutter/material.dart';
import 'package:src/models/item.dart';
import 'package:src/widgets/image_item_widget.dart';
import 'package:src/widgets/name_widget.dart';
import 'package:src/widgets/price_widget.dart';
import 'package:src/widgets/rating_stars_widget.dart';
import 'package:src/widgets/stock_widget.dart';

import '../widgets/identity_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List items = [
      Item(
        name: 'Table',
        price: '650,000',
        image: 'table.webp',
        stock: 3,
        rating: 4,
      ),
      Item(
        name: 'Cupboard',
        price: '1,200,000',
        image: 'cupboard.webp',
        stock: 17,
        rating: 2,
      ),
      Item(
        name: 'Dining Table',
        price: '1,399,000',
        image: 'dining-table.webp',
        stock: 9,
        rating: 3,
      ),
      Item(
        name: 'Office Chair',
        price: '1,100,000',
        image: 'office-chair.webp',
        stock: 29,
        rating: 5,
      ),
      Item(
        name: 'Chair',
        price: '420,000',
        image: 'chair.webp',
        stock: 25,
        rating: 2,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BAHTIAR STORE.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ),
      bottomNavigationBar: const IdentityWidget(),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 260,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              child: Card(
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black54,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      12,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    ImageItemWidget(
                      image: item.image,
                    ),
                    Container(
                      margin: const EdgeInsets.all(
                        10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NameWidget(
                            name: item.name,
                            size: 20,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          PriceWidget(
                            price: item.price,
                            size: 16,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingStarsWidget(
                                rating: item.rating,
                                size: 14,
                              ),
                              StockWidget(
                                stock: item.stock,
                                size: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
            );
          },
        ),
      ),
    );
  }
}
