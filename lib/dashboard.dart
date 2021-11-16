import 'package:flutter/material.dart';
import 'document_page.dart';
import 'product_page.dart';
import 'team_page.dart';
import 'business_page.dart';
import 'message_page.dart';
import 'settings_page.dart';

// ignore: must_be_immutable
class GridDashboard extends StatelessWidget {
  Items item1 = new Items(title: "Product", img: "assets/product.png");

  Items item2 = new Items(
    title: "Team",
    img: "assets/team.png",
  );
  Items item3 = new Items(
    title: "Business",
    img: "assets/business.png",
  );
  Items item4 = new Items(
    title: "Documentation",
    img: "assets/documentation.png",
  );
  Items item5 = new Items(
    title: "Message",
    img: "assets/chat.png",
  );
  Items item6 = new Items(
    title: "Settings",
    img: "assets/setting.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff374f58;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 42,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(data.title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              onTap: () {
                // gridClick(Items(title: '', img: ''));
                if (data.title == "Documentation") {
                  goToDocumentPage(context, Items(title: '', img: ''));
                } else if (data.title == "Product") {
                  goToProductPage(context, Items(title: '', img: ''));
                } else if (data.title == "Team") {
                  goToTeamPage(context, Items(title: '', img: ''));
                } else if (data.title == "Business") {
                  goToBusinessPage(context, Items(title: '', img: ''));
                } else if (data.title == "Message") {
                  goToMessagePage(context, Items(title: '', img: ''));
                } else {
                  goToSettingsPage(context, Items(title: '', img: ''));
                }
              },
            );
          }).toList()),
    );
  }
}

// gridClick(Items item){
//   print("Tapped");
// }

goToDocumentPage(BuildContext context, Items item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => DocumentPage(),
    ),
  );
}

goToProductPage(BuildContext context, Items item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => ProductPage(),
    ),
  );
}

goToTeamPage(BuildContext context, Items item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => TeamPage(),
    ),
  );
}

goToBusinessPage(BuildContext context, Items item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => BusinessPage(),
    ),
  );
}

goToMessagePage(BuildContext context, Items item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => MessagePage(),
    ),
  );
}

goToSettingsPage(BuildContext context, Items item) {
  Navigator.push(
    context,
    MaterialPageRoute(
      fullscreenDialog: true,
      builder: (BuildContext context) => SettingsPage(),
    ),
  );
}

class Items {
  String title;
  String img;
  Items({required this.title, required this.img});
}
