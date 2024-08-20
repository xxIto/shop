import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../models/product_model.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return products;
  }

  ProductModel? findByProdId(String productId) {
    if (products.where((element) => element.productId == productId).isEmpty) {
      return null;
    }
    return products.firstWhere((element) => element.productId == productId);
  }

  List<ProductModel> findByCategory({required String categoryName}) {
    List<ProductModel> categoryList = products
        .where(
          (element) => element.productCategory.toLowerCase().contains(
                categoryName.toLowerCase(),
              ),
        )
        .toList();
    return categoryList;
  }

  List<ProductModel> searchQuery(
      {required String searchText, required List<ProductModel> passedList}) {
    List<ProductModel> searchList = passedList
        .where(
          (element) => element.productTitle.toLowerCase().contains(
                searchText.toLowerCase(),
              ),
        )
        .toList();
    return searchList;
  }

  List<ProductModel> products = [
    // Phones
    ProductModel(
      //1
      productId: 'iphone14-128gb-black',
      productTitle: "Apple iPhone 14 Pro - Black",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/BtMBSgK/1-iphone14-128gb-black.webp",
      productQuantity: "10",
    ),
    ProductModel(
      //2
      productId: 'iphone13-mini-256gb-midnight',
      productTitle: "iPhone 13 Mini - Midnight",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage:
          "https://i.ibb.co/nbwTvXQ/2-iphone13-mini-256gb-midnight.webp",
      productQuantity: "15",
    ),
    ProductModel(
      //3
      productId: 'Acheter un iPhone 14',
      productTitle: "iPhone 14",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/G7nXCW4/3-i-Phone-14.jpg",
      productQuantity: "144",
    ),
    ProductModel(
      //4
      productId: const Uuid().v4(),
      productTitle: "Samsung Galaxy S22 Ultra 5G - Phantom Black",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage:
          "https://i.ibb.co/z5zMDCx/4-Samsung-Galaxy-S22-Ultra-5-G-256-GB-Phantom-Black-Unlocked.webp",
      productQuantity: "2363",
    ),
    ProductModel(
      //5
      productId: const Uuid().v4(),
      productTitle: "Samsung Galaxy S21 Ultra 5G",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage:
          "https://i.ibb.co/ww5WjkV/5-Samsung-Galaxy-S21-Ultra-5-G.png",
      productQuantity: "3625",
    ),
    ProductModel(
      //6
      productId: const Uuid().v4(),
      productTitle: "OnePlus 9 Pro 5G - Morning Mist",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage:
          "https://i.ibb.co/0yhgKVv/6-One-Plus-9-Pro-5-G-LE2120-256-GB-12-GB-RAM.png",
      productQuantity: "3636",
    ),

    ProductModel(
      //7
      productId: const Uuid().v4(),
      productTitle: "Samsung Galaxy Z Flip3 5G",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/NstFstg/7-Samsung-Galaxy-Z-Flip3-5-G.png",
      productQuantity: "525",
    ),
    ProductModel(
      //8
      productId: const Uuid().v4(),
      productTitle: "Apple introduces iPhone 14 and iPhone 14 Plus",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/8P1HBm4/8-iphone14plushereo.jpg",
      productQuantity: "2526",
    ),
    ProductModel(
      //9
      productId: const Uuid().v4(),
      productTitle: "Xiaomi Redmi Note 10 Pro",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/W3QcVMv/9-Xiaomi-Redmi-Note-10-Pro.png",
      productQuantity: "353",
    ),
    ProductModel(
      //10
      productId: const Uuid().v4(),
      productTitle: "OnePlus 10 Pro 5G",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/9vGVHQk/10-One-Plus-10-Pro-5-G.png",
      productQuantity: "3873",
    ),
    ProductModel(
      //11
      productId: const Uuid().v4(),
      productTitle: "Google Pixel 6",
      productPrice: "5.000",
      productCategory: "Phones",
      productDescription: "HP Mahal",
      productImage: "https://i.ibb.co/0K8ZxZj/11-Google-Pixel-6.png",
      productQuantity: "62332",
    ),
    // Laptops
    // https://i.ibb.co/MDcGHsb/12-ASUS-ROG-Zephyrus-G15.jpg
    ProductModel(
      //12
      productId: const Uuid().v4(),
      productTitle: "ASUS ROG Zephyrus G15",
      productPrice: "12.000",
      productCategory: "Laptops",
      productDescription: "Laptop Gaming",
      productImage: "https://i.ibb.co/kMR5mpR/12-ASUS-ROG-Zephyrus-G15.png",
      productQuantity: "525",
    ),
    ProductModel(
      //13
      productId: const Uuid().v4(),
      productTitle: "Acer Predator Helios 300",
      productPrice: "12.000",
      productCategory: "Laptops",
      productDescription: "Laptop Gaming",
      productImage: "https://i.ibb.co/tcB3HXJ/13-Acer-Predator-Helios-300.webp",
      productQuantity: "5353",
    ),
    ProductModel(
      //14
      productId: const Uuid().v4(),
      productTitle: "Razer Blade 15 Base",
      productPrice: "12.000",
      productCategory: "Laptops",
      productDescription: "Laptop Gaming",
      productImage: "https://i.ibb.co/XDtWpXC/14-Razer-Blade-15-Base.png",
      productQuantity: "5335",
    ),
    ProductModel(
      //15
      productId: const Uuid().v4(),
      productTitle: "MSI GS66 Stealth",
      productPrice: "12.000",
      productCategory: "Laptops",
      productDescription: "Laptop Gaming",
      productImage: "https://i.ibb.co/0Q4xHVn/15-MSI-GS66-Stealth.png",
      productQuantity: "2599",
    ),

    // WATCHES
    ProductModel(
      //16
      productId: const Uuid().v4(),
      productTitle: "Apple Watch Series 7",
      productPrice: "500.000",
      productCategory: "Watches",
      productDescription: "Jam Tangan Mahal",
      productImage: "https://i.ibb.co/8cNwrbJ/16-Apple-Watch-Series-7.png",
      productQuantity: "535352",
    ),
    ProductModel(
      //17
      productId: const Uuid().v4(),
      productTitle: "Samsung Galaxy Watch 4",
      productPrice: "500.000",
      productCategory: "Watches",
      productDescription: "Jam Tangan Mahal.",
      productImage: "https://i.ibb.co/tsq0VD8/17-Samsung-Galaxy-Watch-4.png",
      productQuantity: "252",
    ),
    ProductModel(
      //18
      productId: const Uuid().v4(),
      productTitle: "Fitbit Sense Advanced Smartwatch",
      productPrice: "500.000",
      productCategory: "Watches",
      productDescription: "Jam Tangan Mahal",
      productImage:
          "https://i.ibb.co/jrVQppF/18-Fitbit-Sense-Advanced-Smartwatch.png",
      productQuantity: "526",
    ),
    ProductModel(
      //19
      productId: const Uuid().v4(),
      productTitle: "Garmin Forerunner 945 LTE",
      productPrice: "500.000",
      productCategory: "Watches",
      productDescription: "Jam Tangan Mahal.",
      productImage: "https://i.ibb.co/xXhSfTh/19-Garmin-Forerunner-945-LTE.png",
      productQuantity: "58385",
    ),
    // SHOES
    ProductModel(
      //20
      productId: const Uuid().v4(),
      productTitle: "Nike Air Force 1 '07",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage: "https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png",
      productQuantity: "7544",
    ),
    ProductModel(
      //21
      productId: const Uuid().v4(),
      productTitle: "Adidas Ultraboost 21",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage: "https://i.ibb.co/QM1dLww/21-Adidas-Ultraboost-21.webp",
      productQuantity: "7654",
    ),
    ProductModel(
      //22
      productId: const Uuid().v4(),
      productTitle: "Converse Chuck Taylor All Star High Top",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage:
          "https://i.ibb.co/TBQv7G6/22-Converse-Chuck-Taylor-All-Star-High-Top.png",
      productQuantity: "36437",
    ),
    ProductModel(
      //23
      productId: const Uuid().v4(),
      productTitle: "New Balance Fresh Foam 1080v11",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "ASepatu Mahal nih",
      productImage:
          "https://i.ibb.co/k2BtR9X/23-New-Balance-Fresh-Foam-1080v11.webp",
      productQuantity: "36637",
    ),
    ProductModel(
      //24
      productId: const Uuid().v4(),
      productTitle: "Vans Old School",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "AbSepatu Mahal nih",
      productImage: "https://i.ibb.co/NNDk3pt/24-Vans-Old-Skool.png",
      productQuantity: "3637",
    ),
    ProductModel(
      //25
      productId: const Uuid().v4(),
      productTitle: "Adidas Ultraboost 21",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage: "https://i.ibb.co/VmvdBqC/25-Adidas-Ultraboost-21.webp",
      productQuantity: "8565",
    ),
    ProductModel(
      //26
      productId: const Uuid().v4(),
      productTitle: "Nike Air Max 270",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage: "https://i.ibb.co/Tk3WDX1/26-Nike-Air-Max-270.png",
      productQuantity: "6437",
    ),
    ProductModel(
      //27
      productId: const Uuid().v4(),
      productTitle: "New Balance Fresh Foam 1080v11",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage:
          "https://i.ibb.co/5rxL1Ck/27-New-Balance-Fresh-Foam-1080v11.png",
      productQuantity: "7853",
    ),
    ProductModel(
      //28
      productId: const Uuid().v4(),
      productTitle: "Puma Future Z 1.1 FG/AG Soccer Cleats",
      productPrice: "500.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal nih",
      productImage: "https://i.ibb.co/8bMhmCj/28-Puma-Future-Z-1-1-FG.webp",
      productQuantity: "474",
    ),
    // Clothes
    ProductModel(
      //29
      productId: const Uuid().v4(),
      productTitle: "Ray-Ban Wayfarer Sunglasses",
      productPrice: "500.000",
      productCategory: "Accessories",
      productDescription: "Mahal nih",
      productImage:
          "https://i.ibb.co/FDMK4Lq/29-Ray-Ban-Wayfarer-Sunglasses.png",
      productQuantity: "7436",
    ),
    ProductModel(
      //30
      productId: const Uuid().v4(),
      productTitle: "Herschel Supply Co. Settlement Backpack",
      productPrice: "500.000",
      productCategory: "Accessories",
      productDescription: "Mahal nih",
      productImage:
          "https://i.ibb.co/1GV6Nrv/30-Herschel-Supply-Co-Settlement-Backpack.png",
      productQuantity: "3637",
    ),
    ProductModel(
      //31
      productId: const Uuid().v4(),
      productTitle: "Fitbit Charge 5 Advanced Fitness Tracker",
      productPrice: "500.000",
      productCategory: "Accessories",
      productDescription: "Mahal nih",
      productImage:
          "https://i.ibb.co/Wz2yzQ7/31-Fitbit-Charge-5-Advanced-Fitness-Tracker.png",
      productQuantity: "347343",
    ),
    ProductModel(
      //32
      productId: const Uuid().v4(),
      productTitle: "Fjallraven Kanken Classic Backpack",
      productPrice: "500.000",
      productCategory: "Accessories",
      productDescription: "Mahal nih",
      productImage:
          "https://i.ibb.co/sjH157B/32-Fjallraven-Kanken-Classic-Backpack.jpg",
      productQuantity: "7585",
    ),
    ProductModel(
      //33
      productId: const Uuid().v4(),
      productTitle: "Nike Air Force 1 '07",
      productPrice: "200.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal",
      productImage: "https://i.ibb.co/G5kWzbM/33-Nike-Air-Force-1.webp",
      productQuantity: "47548",
    ),
    ProductModel(
      //34
      productId: const Uuid().v4(),
      productTitle: "Adidas Ultraboost 21",
      productPrice: "200.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal",
      productImage: "https://i.ibb.co/X7tVsZ1/34-Adidas-Ultraboost-21.webp",
      productQuantity: "7485",
    ),
    ProductModel(
      //35
      productId: const Uuid().v4(),
      productTitle: "Converse Chuck Taylor All Star Low Top",
      productPrice: "200.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal",
      productImage:
          "https://i.ibb.co/TBQv7G6/22-Converse-Chuck-Taylor-All-Star-High-Top.png",
      productQuantity: "47433",
    ),
    ProductModel(
      //36
      productId: const Uuid().v4(),
      productTitle: "Vans Old School Classic Skate Shoes",
      productPrice: "200.000",
      productCategory: "Shoes",
      productDescription: "Sepatu Mahal",
      productImage: "https://i.ibb.co/NNDk3pt/24-Vans-Old-Skool.png",
      productQuantity: "383",
    ),
  ];
}
