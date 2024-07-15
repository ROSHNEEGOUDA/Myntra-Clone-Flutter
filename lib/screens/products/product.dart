import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/common_widgets/cached_image.dart';
import 'package:flutter_myntra_clone/data_provider/product_dto.dart';
import 'package:flutter_myntra_clone/screens/Advance product/advance_product_detail.dart';

class Product extends StatefulWidget {
  final ProductDto productDto;

  Product(this.productDto);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isWishlist = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ProductDetails.routeName);
      },
      child: Builder(
        builder: (ctx) => Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 8,
                child: CachedImage(
                  url: widget.productDto.imageUrl,
                  height: double.infinity,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              widget.productDto.name,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isWishlist = !isWishlist;
                              });
                            },
                            child: Icon(
                              isWishlist ? Icons.favorite : Icons.favorite_border,
                              color: isWishlist ? Colors.red : null,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        widget.productDto.description,
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '₹ ${widget.productDto.price}',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            '₹ ${widget.productDto.mrpPrice}',
                            style: TextStyle(
                              fontSize: 12,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(width: 2),
                          Text(
                            widget.productDto.discountString,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(255, 144, 90, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
