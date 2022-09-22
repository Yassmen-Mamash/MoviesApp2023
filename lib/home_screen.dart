import 'package:flutter/material.dart';
import 'package:news_api/api/api_manager.dart';
import 'api/model/MoviesPopularResponce.dart';

class HomeScreen extends StatelessWidget
{
  static const String routeName='Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('news Movies '), ),
      body: Column(
          children: [
            Text('I am text in scaffoled Movies '),
            FutureBuilder<MoviesPopularResponce>(
               future: ApiManager.getMoviePopular(),
                 builder: (buildContext,snapShot) {
                  if (snapShot.hasError)
                   return Center(child: Text('${snapShot.error.toString()}'));
                  else if (snapShot.connectionState == ConnectionState.waiting)
                     return Center(child: CircularProgressIndicator());

                 var data = snapShot.data;

                  if (data?.success == false)
                    return Center(child: Text('${data?.statusMessage}'));

                  var results = data?.results;

                   return Expanded(
                    child: ListView.builder(itemBuilder: (_, index) {
                      return Text((results![index].title) ?? '');
                    }, itemCount: results?.length ?? 0,),

                  );
                }),
          ],
        )

      );

  }

}

