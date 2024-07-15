import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/data_provider/product_dto.dart';
import 'package:flutter_myntra_clone/data_provider/product_data.dart';
import 'package:flutter_myntra_clone/screens/Advance product/advance_product_detail.dart';

class AdvanceProductDetail extends StatelessWidget {
  final String? gender;
  final String? bodyType;
  final String? bodyShape;
  final String? clothingType;
  final String? dressType;

  const AdvanceProductDetail({
    Key? key,
    this.gender,
    this.bodyType,
    this.bodyShape,
    this.clothingType,
    this.dressType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ProductDto> products = ProductData.getProductsListData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Filtered Clothes'),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        color: Color(0xFFFFF9C4), // Pale yellow background
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selected Filters:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: [
                if (gender != null) Text('Gender: $gender', style: TextStyle(fontSize: 16)),
                if (gender == 'female') ...[
                  if (bodyType != null) Text('Body Type: $bodyType', style: TextStyle(fontSize: 16)),
                  if (bodyShape != null) Text('Body Shape: $bodyShape', style: TextStyle(fontSize: 16)),
                  if (dressType != null) Text('Dress Type: $dressType', style: TextStyle(fontSize: 16)),
                ] else if (gender == 'male') ...[
                  if (clothingType != null) Text('Clothing Type: $clothingType', style: TextStyle(fontSize: 16)),
                ],
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductDetails.routeName,
                        arguments: product.id,
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(product.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  product.description,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      '₹ ${product.price}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      '₹ ${product.mrpPrice}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                        decoration: TextDecoration.lineThrough,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Text(
                                  product.discountString,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
