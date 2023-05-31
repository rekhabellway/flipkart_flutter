import 'dart:ui';
import 'package:flipkart/data/model/body/response/base/category_trend.dart';
import '../model/body/response/base/carousel_model.dart';
import '../model/body/response/base/category_flipkart.dart';
import '../model/body/response/base/category_item_discount_model.dart';
import '../model/body/response/base/category_model.dart';
import '../model/body/response/base/category_item_model.dart';
import '../model/body/response/base/category_product.dart';
import '../model/body/response/base/category_shop.dart';
import '../model/body/response/base/category_suggested_model.dart';

List<CategoryItemModel> categoryDataItemList = [
  CategoryItemModel(
      id: 1,
      offer: "Extra Rs8,000 Off*",
      name: "Laptops Bonanza",
      price: "From Rs.13,490",
      image: "assets/images/img_19.png"),
  CategoryItemModel(
      id: 2,
      offer: "Offers",
      name: "Emporio Armani...",
      price: "Min.25% Off",
      image: "assets/images/img_25.png"),
  CategoryItemModel(
      id: 3,
      offer: "BestSellers",
      name: "Fatstrack, Timex...",
      price: "Under Rs.1,299",
      image: "assets/images/img_24.png"),
];
List<CategoryModel> categoryDataList = [
  CategoryModel(id: 1, name: "SuperCoins", image: "assets/images/img_5.png"),
  CategoryModel(
      id: 2, name: "NextGen Brands", image: "assets/images/img_15.png"),
  CategoryModel(id: 3, name: "Credit", image: "assets/images/img_16.png"),
  CategoryModel(id: 4, name: "Win Prize", image: "assets/images/img_17.png"),
  CategoryModel(id: 5, name: "LiveShop", image: "assets/images/img_18.png"),
  CategoryModel(id: 6, name: "EMI", image: "assets/images/img_10.png"),
  CategoryModel(id: 7, name: "Plus", image: "assets/images/img_11.png"),
  CategoryModel(id: 8, name: "Group Buy", image: "assets/images/img_12.png"),
  CategoryModel(id: 9, name: "Camera", image: "assets/images/img_13.png"),
  CategoryModel(id: 10, name: "Fire Drops", image: "assets/images/img_13.png"),
];

List<CategoryModelItemDiscount> categoryDataModelItemDiscountList = [
  CategoryModelItemDiscount(
    id: 1,
    name: "Women's Slippers",
    name1: "Women's Dresses",
    image: "assets/images/img_33.png",
    images:
        "https://www.shahifits.in/wp-content/uploads/2022/12/Haldi-Function-Dress-Yellow-Outfit-for-Women-scaled-e1670568927175.jpg",
    title: "Trending",
    title1: "Upto 80% Off",
  ),
  CategoryModelItemDiscount(
    id: 2,
    name: "Women's Jeans",
    name1: "Kid's Wear",
    image: "assets/images/img_34.png",
    images:
        "https://media.istockphoto.com/id/931577634/photo/soft-focus-of-a-two-years-old-child-choosing-her-own-dresses-from-kids-cloth-rack.jpg?s=1024x1024&w=is&k=20&c=SyjUcD-c5EG5ZzBF1XWxcJUMCwXIORq6mTzHCMPODuk=",
    title: "Best Picks",
    title1: "Extra 10% Off",
  ),
  CategoryModelItemDiscount(
    id: 3,
    name: "Women's Dresses",
    name1: "Bedsheets",
    image: "assets/images/img_35.png",
    images:
        "https://cdn.shopify.com/s/files/1/0549/2532/8602/products/1_18af6c05-d059-4450-932f-e0893b49d45d.jpg?v=1636347967",
    title: "New Range",
    title1: "Extra 15% Off",
  ),
  CategoryModelItemDiscount(
    id: 4,
    name: "Gown",
    name1: "Bottom Wear For Women",
    image: "assets/images/img_36.png",
    images:
        "https://dressandflex.com/wp-content/uploads/2023/02/fd3c66e0-6874-45e0-a45e-cd817747727a.webp",
    title: "Bestsellers",
    title1: "Min. 70% Off",
  ),
];
List<CategoryModelSuggested> categoryDataModelSuggestedList = [
  CategoryModelSuggested(
    id: 1,
    name: "Round Neck T-shirt",
    image: "assets/images/img_37.png",
    price: "Rs.400",
  ),
  CategoryModelSuggested(
    id: 2,
    name: "Women's Crop Top",
    image: "assets/images/img_38.png",
    price: "Rs.500",
  ),
  CategoryModelSuggested(
    id: 3,
    name: "Women's Pink Top",
    image: "assets/images/img_39.png",
    price: "Rs.600",
  ),
  CategoryModelSuggested(
    id: 4,
    name: "Men's Black T-shirt",
    image: "assets/images/img_40.png",
    price: "Rs.700",
  ),
  CategoryModelSuggested(
    id: 5,
    name: "Multicolor Top",
    image: "assets/images/img_41.png",
    price: "Rs.800",
  ),
  CategoryModelSuggested(
    id: 6,
    name: "Ladies Kurta Plazo",
    image: "assets/images/img_42.png",
    price: "Rs.900",
  )
];

List<CategoryTrendModel> categoryDataTrendList = [
  CategoryTrendModel(
    id: 1,
    name: "Student's Club",
    image: "assets/images/student_club.png",
    title: "Back-To_School",
  ),
  CategoryTrendModel(
      id: 2,
      name: "Flipkart Samarth",
      image: "assets/images/samarth.png",
      title: "Handicrafts,Decor,Art."),
  CategoryTrendModel(
    id: 3,
    name: "Flipkart Green",
    image: "assets/images/flipkart_green.png",
    title: "The Sustainable Store",
  ),
  CategoryTrendModel(
      id: 4,
      name: "Summer Store",
      image: "assets/images/summer.png",
      title: "A Lot of Fun"),
  CategoryTrendModel(
      id: 5,
      name: "Flipkart Original",
      image: "assets/images/flipkart_original.png",
      title: "Roadster,HRX"),
  CategoryTrendModel(
      id: 6,
      name: "Travel Store",
      image: "assets/images/travel_store.png",
      title: "See the World")
];
List<CategoryShopModel> categoryDataShopList = [
  CategoryShopModel(
    id: 1,
    name: "Offer Zone",
    title: "Hindi",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/img_55.png",
  ),
  CategoryShopModel(
    id: 2,
    name: "Mobiles",
    title: "English",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/img_56.png",
  ),
  CategoryShopModel(
    id: 3,
    name: "Fashions",
    title: "Marathi",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/img_57.png",
  ),
  CategoryShopModel(
    id: 4,
    name: "Electronics",
    title: "Telugu",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/img_58.png",
  ),
  CategoryShopModel(
    id: 5,
    name: "Home",
    title: "Tamil",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/img_59.png",
  ),
  CategoryShopModel(
    id: 6,
    name: "Personal Care",
    title: "Gujarati",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/img_60.png",
  ),
  CategoryShopModel(
    id: 7,
    name: "Appliances",
    title: "",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/appliances.png",
  ),
  CategoryShopModel(
    id: 8,
    name: "Toy & Baby",
    title: "",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/toys.png",
  ),
  CategoryShopModel(
    id: 9,
    name: "Furniture",
    title: "",
    images:
        "https://hindikiguide.com/wp-content/uploads/2018/07/India-Gate-in-Hindi.jpg?ezimgfmt=rs%3Adevice%2Frscb1-1",
    image: "assets/images/furniture.png",
  ),
  CategoryShopModel(
    id: 10,
    name: "Flights & Hotels",
    image: "assets/images/flights"
        ".png",
  ),
  CategoryShopModel(
    id: 11,
    name: "Sports",
    image: "assets/images/sports.png",
  ),
  CategoryShopModel(
    id: 12,
    name: "Food & More",
    image: "assets/images/food.png",
  ),
  CategoryShopModel(
    id: 13,
    name: "Bike & Cars",
    image: "assets/images/bike&cars.png",
  ),
  CategoryShopModel(
    id: 14,
    name: "Gift Cards",
    image: "assets/images/giftcards.png",
  ),
];

List<CategoryFlipkartModel> categoryDataFlipkartList = [
  CategoryFlipkartModel(
    id: 1,
    name: "Super Coins",
    image: "assets/images/img_5.png",
    color: const Color(0x89D6A2E5),
  ),
  CategoryFlipkartModel(
    id: 2,
    name: "Coupons",
    image: "assets/images/coupon.png",
    color: const Color(0x89A6D2E5),
  ),
  CategoryFlipkartModel(
    id: 3,
    name: "Credit",
    image: "assets/images/credit.png",
    color: const Color(0x89E5D8A6),
  ),
  CategoryFlipkartModel(
    id: 4,
    name: "What's New",
    image: "assets/images/news.png",
    color: const Color(0x89E5A6AD),
  ),
  CategoryFlipkartModel(
    id: 5,
    name: "FireDrops",
    image: "assets/images/firedrops.png",
    color: const Color(0x89E5A2A8),
  ),
  CategoryFlipkartModel(
    id: 6,
    name: "Games",
    image: "assets/images/games.png",
    color: const Color(0x89B7E5A6),
  ),
  CategoryFlipkartModel(
    id: 7,
    name: "Credit",
    image: "assets/images/credit.png",
    color: const Color(0x89E5D8A6),
  ),
  CategoryFlipkartModel(
    id: 8,
    name: "Camera",
    image: "assets/images/camera.png",
    color: const Color(0x89A9DED3),
  ),
  CategoryFlipkartModel(
    id: 9,
    name: "Become a Seller",
    image: "assets/images/seller.png",
    color: const Color(0xEAE8D495),
  ),
  CategoryFlipkartModel(
    id: 10,
    name: "LiveShop+",
    image: "assets/images/live_shop.png",
    color: const Color(0x89DC92D3),
  ),
  CategoryFlipkartModel(
    id: 11,
    name: "Plus Zone+",
    image: "assets/images/plus_zone.png",
    color: const Color(0x899699D3),
  ),
  CategoryFlipkartModel(
    id: 12,
    name: "What's New",
    image: "assets/images/news.png",
    color: const Color(0x89E5A6AD),
  ),
];
List<CategoryProductModel> categoryDataProductList = [
  CategoryProductModel(
    id: 1,
    name: "White Flats",
    image: "assets/images/img_33.png",
    title: "Min. 70% off",
  ),
  CategoryProductModel(
    id: 2,
    name: "Women's Dresses",
    image: "assets/images/women_gown.png",
    title: "Min. 70% off",
  ),
  CategoryProductModel(
    id: 3,
    name: "Casual Flats",
    image: "assets/images/flat.png",
    title: "Min. 70% off",
  ),
  CategoryProductModel(
      id: 4,
      name: "Kurta's",
      image: "assets/images/kurta.png",
      title: "Min. 70% off"),
  CategoryProductModel(
      id: 5,
      name: "Tops",
      image: "assets/images/img_34.png",
      title: "Min. 70% off"),
  CategoryProductModel(
      id: 6,
      name: "Mobiles",
      image: "assets/images/img_56.png",
      title: "Min. 70% off"),
  CategoryProductModel(
      id: 7,
      name: "Smart Watches",
      image: "assets/images/img_31.png",
      title: "Min. 70% off"),
  CategoryProductModel(
      id: 8,
      name: "Sweatshirts",
      image: "assets/images/sweetshirt.png",
      title: "Min. 70% off"),
  CategoryProductModel(
      id: 9,
      name: "Smart Watches",
      image: "assets/images/img_31.png",
      title: "Min. 70% off"),
  CategoryProductModel(
      id: 10,
      name: "Sweatshirts",
      image: "assets/images/sweetshirt.png",
      title: "Min. 70% off"),
];

List<CategoryCarouselModel> categoryDataCarouselList = [
  CategoryCarouselModel(
    id: 1,
    image:
        "https://cdn0.desidime.com/attachments/photos/801530/original/Screenshot_2022-09-04_at_11.00.17_AM-min.png?1662269820",
  ),
  CategoryCarouselModel(
    id: 2,
    image:
        "https://cdn0.desidime.com/attachments/photos/801530/original/Screenshot_2022-09-04_at_11.00.17_AM-min.png?1662269820",
  ),
  CategoryCarouselModel(
    id: 3,
    image:
        "https://i.gadgets360cdn.com/large/flipkart_big_billion_days_2022_sale_tv_appliances_1663936508259.jpg?downsize=950:*",
  ),
  CategoryCarouselModel(
    id: 4,
    image:
        "https://cdn0.desidime.com/attachments/photos/801530/original/Screenshot_2022-09-04_at_11.00.17_AM-min.png?1662269820",
  ),
];
