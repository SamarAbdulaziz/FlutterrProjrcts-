import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Widgets/NewsCategoryItems.dart';

class  ListViewExampleScreen extends StatelessWidget {

  List<NewsCategoryItems> items = [
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),
    NewsCategoryItems('politics', 'assets/images/politics.jpg'),
    NewsCategoryItems('Technology', 'assets/images/tecnology.jpg'),
    NewsCategoryItems('Sports', 'assets/images/sports.jpg'),
    NewsCategoryItems('Tourism', 'assets/images/tourism.jpg'),
    NewsCategoryItems('Health','assets/images/health.png'),
    NewsCategoryItems('ForHer','assets/images/forHer.jpg'),
    NewsCategoryItems('economy','assets/images/economy.jpg'),
    NewsCategoryItems('cars','assets/images/cars.jpg'),
    NewsCategoryItems('cook','assets/images/cook.jpg'),
    NewsCategoryItems('knowledge','assets/images/knowledge.jpg'),

  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title:Text(
           'List View & List Grid',
          ),
    ),
    body:
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 2,
        crossAxisCount:2,
      ),
      itemBuilder: (context, index) => NewsCategoryItems(items[index].title, items[index].imagePath),
    ),
  );
   }
}
/*count(crossAxisCount: 2,
  children:List.generate(items.length, (index) =>NewsCategoryItems(items[index].title,items[index]. imagePath))
  )*/