import 'package:cook/providers/database_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewFoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('New Food'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller:
                  Provider.of<DatabaseProvider>(context).foodTitleController,
              decoration: InputDecoration(
                  label: Text('food title'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            CheckboxListTile(
              value: Provider.of<DatabaseProvider>(context).isFavorites,
              onChanged: (value) {
                Provider.of<DatabaseProvider>(context, listen: false)
                    .changeIsFavoriteOnNewFoodScreen();
              },
              title: Text('I have complete this food'),
            ),
            InkWell(
              onTap: () async {
                await Provider.of<DatabaseProvider>(context, listen: false)
                    .insertNewFood();
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Add The Food',
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
