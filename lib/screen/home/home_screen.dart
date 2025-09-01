import 'package:commerce_202508/asset_path.dart';
import 'package:commerce_202508/screen/home/home_widgets.dart';
import 'package:flutter/material.dart';
import 'package:commerce_202508/model/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    AssetPath.cloth1,
    AssetPath.cloth2,
    AssetPath.cloth3,
    AssetPath.cloth4,
  ];

  List<ProductModel> newProductList = [
    ProductModel(AssetPath.productJacketJean, "청자켓", 27000, 50, 4.3, false),
    ProductModel(AssetPath.productBag, "가방", 18000, 10, 4.5, false),
    ProductModel(AssetPath.productManJacket, "자켓", 17000, 13, 3.8, false),
    ProductModel(AssetPath.productManStreet, "스트리트", 80000, 5, 3.1, false),
    ProductModel(AssetPath.productManSuit, "수트", 90000, 40, 5.0, false),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 300,
            child: PageView(
              onPageChanged: (value) {
                currentIndex = value;
                setState(() {});
              },
              children: [
                ...List.generate(imageList.length, (index) {
                  return Image.asset(imageList[index], fit: BoxFit.cover);
                }),
              ],
            ),
          ),

          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imageList.length, (index) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 10,
                width: currentIndex == index ? 20 : 10,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == index
                      ? Colors.grey
                      : Colors.grey.shade300,
                ),
              );
            }),
          ),

          SizedBox(height: 24),
          HomeWidgets.shortcut(iconList: [
            AssetPath.jacket,
            AssetPath.jumper,
            AssetPath.necklace,
            AssetPath.bag,
            AssetPath.cap,
            AssetPath.skirt,
            AssetPath.trousers,
            AssetPath.shirt,
          ]),

          //리스트뷰를 활용한 가로 스크롤 위젯 추가
          SizedBox(height: 24),
          HomeWidgets.subTitle("신제품"),
          SizedBox(height: 12),
          HomeWidgets.productHorizontal(newProductList),

          SizedBox(height: 24),
          HomeWidgets.subTitle("이벤트"),
          SizedBox(height: 12),
          SizedBox(height: 200, width: double.infinity, child: Image.asset(AssetPath.event, fit: BoxFit.cover)),

          SizedBox(height: 24),
        ],
      ),
    );
  }
}
