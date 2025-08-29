import 'package:commerce_202508/model/product_model.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  static Widget shortcut({required List<String> iconList}) {
    //생성자 이제 필요없음
    return GridView.count( //자식위젯 안의 아이들을 주어진 영역에 무조건 꽉 채움
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(), //그리드는 스크롤을 못하게
        children: List.generate(iconList.length, (index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      maximumSize: Size(70, 70),
                      padding: EdgeInsets.all(16),
                      elevation: 0,
                      //떠 있는 거(그림자)
                      backgroundColor: Colors.amberAccent,
                      foregroundColor: Colors.deepPurpleAccent
                  ),
                  child: Image.asset(iconList[index], fit: BoxFit.cover)),
            ],
          );
        },)
    );
  }

  static Widget subTitle(String title) {
    return Row(
      children: [
        SizedBox(width: 16,),
        Text(
          title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
      ],
    );
  }

  static Widget productHorizontal(List<ProductModel> dataList) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dataList.length,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          var productModel = dataList[index];
          bool lastIndex = index == dataList.length - 1;
          return Container(
            width: 150,
            margin: EdgeInsets.only(right: lastIndex ? 0 : 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(productModel.image, height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,),
                  SizedBox(height: 4,),
                  Text(productModel.name, style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600)),
                  Text(
                      "${productModel.price}원", style: TextStyle(fontSize: 14)),
                  Row(
                    children: [
                      Text("평점 ${productModel.reviewRating} (${productModel
                          .reviewCount})", style: TextStyle(fontSize: 14)),
                    ],
                  )
                ]
            ),
          );
        },
      ),
    );
  }
}
