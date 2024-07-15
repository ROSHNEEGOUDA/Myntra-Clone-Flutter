import 'package:flutter/material.dart';
import 'package:flutter_myntra_clone/common_widgets/cached_image.dart';
import 'package:flutter_myntra_clone/data_provider/home_data.dart';
import 'package:flutter_myntra_clone/utils/asset_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_myntra_clone/screens/Advance product/advance_product_list.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        // Handle menu button press
                      },
                    ),
                    Text(
                      'Myntra',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.tune, // Use the 'tune' icon for advanced search
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Show advanced search form
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) => TuneForm(),
                        );
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Handle notifications button press
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Handle favorite button press
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Handle shopping bag button press
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: HomeData.getTopbarAssets()
                  .map((e) => CachedImage(
                        url: e,
                        height: 89,
                        width: 76,
                      ))
                  .toList(),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: banner1,
                    height: 361,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: free_shipping,
                    height: 47,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      CachedImage(
                        url: banner2,
                        width: (MediaQuery.of(context).size.width -
                                MediaQuery.of(context).padding.left -
                                MediaQuery.of(context).padding.right) *
                            0.50,
                        height: 360,
                      ),
                      CachedImage(
                        url: banner3,
                        width: (MediaQuery.of(context).size.width -
                                MediaQuery.of(context).padding.left -
                                MediaQuery.of(context).padding.right) *
                            0.50,
                        height: 360,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: biggest_offers,
                    height: 63,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 275,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: HomeData.getBiggestOffers()
                          .map((e) => Padding(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                child: CachedImage(
                                  url: e,
                                  height: 273,
                                  width: 179,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: best_offers,
                    height: 63,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buildOfferCard(context, kurta_offer, flipflop_offer,
                      watch_offer, loungewear_offer),
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: festive_deals,
                    height: 63,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  buildOfferCard(
                      context, seventy_off, under_399, buy_1_get_1, sixty_off),
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: daily_deals,
                    height: 63,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 265,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: HomeData.getDailyDeals()
                          .map((e) => Padding(
                                padding: EdgeInsets.only(right: 5, left: 5),
                                child: CachedImage(
                                  url: e,
                                  height: 260,
                                  width: 171,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CachedImage(
                    url: featured_brands,
                    height: 63,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 360,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 2.0,
                        onPageChanged: (index, reason) {},
                      ),
                      items: HomeData.getFeaturedBrands()
                          .map((item) => CachedImage(
                                url: item,
                                height: 360,
                              ))
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 50,
                    child: Divider(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '"The great thing about fashion is that it always looks forward"',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Oscar De La Renta',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOfferCard(BuildContext context, String offer1, String offer2,
      String offer3, String offer4) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CachedImage(
                  url: offer1,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
                CachedImage(
                  url: offer2,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CachedImage(
                  url: offer3,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
                CachedImage(
                  url: offer4,
                  height: 186,
                  width: (MediaQuery.of(context).size.width -
                          MediaQuery.of(context).padding.left -
                          MediaQuery.of(context).padding.right) *
                      0.45,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TuneForm extends StatefulWidget {
  @override
  _TuneFormState createState() => _TuneFormState();
}

class _TuneFormState extends State<TuneForm> {
  String? selectedGender;
  String? selectedBodyType;
  String? selectedBodyShape;
  String? selectedClothingType;
  String? selectedDressType;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Choose Gender:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Male'),
                    value: 'male',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                        selectedBodyType = null;
                        selectedClothingType =
                            'traditional'; // Default for male
                        selectedDressType = null; // Reset dress type
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: Text('Female'),
                    value: 'female',
                    groupValue: selectedGender,
                    onChanged: (value) {
                      setState(() {
                        selectedGender = value;
                        selectedClothingType = null;
                        selectedBodyType = 'busty'; // Default for female
                        selectedBodyShape =
                            'Hourglass'; // Default body shape for female
                        selectedDressType = 'crop top'; // Reset dress type
                      });
                    },
                  ),
                ),
              ],
            ),
            if (selectedGender == 'female')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Choose Body Type:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: selectedBodyType,
                    onChanged: (value) {
                      setState(() {
                        selectedBodyType = value;
                      });
                    },
                    items: <String?>['busty', 'broad shoulders']
                        .map<DropdownMenuItem<String>>(
                          (String? value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value ?? ''),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Choose Body Shape:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: selectedBodyShape,
                    onChanged: (value) {
                      setState(() {
                        selectedBodyShape = value;
                      });
                    },
                    items: <String?>[
                      'Rectangular',
                      'Hourglass',
                      'Pear Shaped',
                      'Apple Shaped',
                      // Ensure each value is unique
                    ]
                        .map<DropdownMenuItem<String>>(
                          (String? value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value ?? ''),
                          ),
                        )
                        .toList(),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Choose Dress Type:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: selectedDressType,
                    onChanged: (value) {
                      setState(() {
                        selectedDressType = value;
                      });
                    },
                    items: <String?>[
                      'crop top',
                      'party wear',
                      'kurti',
                      // Add more options as needed
                    ]
                        .map<DropdownMenuItem<String>>(
                          (String? value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value ?? ''),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            if (selectedGender == 'male')
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Choose Clothing Type:',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    value: selectedClothingType,
                    onChanged: (value) {
                      setState(() {
                        selectedClothingType = value;
                      });
                    },
                    items: <String?>[
                      'traditional',
                      'street wear',
                      'sports',
                      'vintage'
                    ]
                        .map<DropdownMenuItem<String>>(
                          (String? value) => DropdownMenuItem<String>(
                            value: value,
                            child: Text(value ?? ''),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle form submission
                  Navigator.pop(context); // Close the form
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AdvanceProductDetail(
                        gender: selectedGender,
                        bodyType: selectedBodyType,
                        bodyShape: selectedBodyShape,
                        clothingType: selectedClothingType,
                        dressType: selectedDressType,
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Apply'),
              ),
            ),
            SizedBox(height: 20), // Add additional spacing at the bottom
          ],
        ),
      ),
    );
  }
}
