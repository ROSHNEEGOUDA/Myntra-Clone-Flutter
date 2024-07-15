import 'package:flutter_myntra_clone/data_provider/product_dto.dart';

class ProductData {
  static List<ProductDto> getProductsListData() {
    return [
      ProductDto(
        id: '1', // Use named parameters
        imageUrl: '/assets/images/WhatsApp 1.jpg',
        name: 'Mast and Harbour',
        description: ' Crop top',
        price: '599',
        mrpPrice: '1099',
        discountString: '(Rs. 500 OFF)',
      ),
      ProductDto(
        id: '2',
        imageUrl: '/assets/images/WhatsApp2.jpg',
        name: 'virgio',
        description: 'Crop Top',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '3',
        imageUrl: '/assets/images/WhatsApp3.jpg',
        name: 'Lulu and sky',
        description: 'Crop Top',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '4',
        imageUrl: '/assets/images/WhatsApp4.jpg',
        name: 'Lulu and sky',
        description: 'Crop Top',
        price: '599',
        mrpPrice: '1499',
        discountString: '(Rs. 900 OFF)',
      ),
      ProductDto(
        id: '5',
        imageUrl: '/assets/images/WhatsApp5.jpg',
        name: 'Rare',
        description: 'Crop top',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '6',
        imageUrl: '/assets/images/baesd.jpg',
        name: 'Baesd',
        description: 'Crop top',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '7',
        imageUrl: '/assets/images/Trendyol.jpg',
        name: 'Trendyol',
        description: 'Crop Top',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '8',
        imageUrl: '/assets/images/color capital.jpg',
        name: 'Color Capital',
        description: 'Crop top',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '9',
        imageUrl: 'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/8426391/2019/1/17/225fcef8-8a90-4984-bb49-9bd536609c501547710777368-WROGN-Men-Peach-Coloured-Printed-Round-Neck-T-shirt-85154771-1.jpg',
        name: 'WROGN',
        description: 'Slim Fit T-Shirt',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
      ProductDto(
        id: '10',
        imageUrl: 'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/8426469/2019/1/16/24879aef-4ea3-4f72-bf45-f93b5b8a5fcf1547626118891-WROGN-Men-Green-Printed-Round-Neck-T-shirt-691547626117696-1.jpg',
        name: 'WROGN',
        description: 'Slim Fit T-Shirt',
        price: '779',
        mrpPrice: '1299',
        discountString: '(40% OFF)',
      ),
    ];
  }

  static ProductDto getProductById(String id) {
    return getProductsListData().firstWhere((product) => product.id == id);
  }
}
