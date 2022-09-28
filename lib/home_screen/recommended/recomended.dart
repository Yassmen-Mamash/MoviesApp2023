import 'package:flutter/material.dart';
import 'package:news_api/api/api_manager.dart';
import 'package:news_api/api/model/RecomendedResponce.dart';
import 'package:news_api/home_screen/movies_card.dart';

class Recomended extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF282A28),
      height: (MediaQuery.of(context).size.height)*0.36,
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recomended",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Expanded(
            child: Row(
              children: [
                FutureBuilder<RecomendedResponce>(
                     future: ApiManager.getRecomendedResponse(),
                       builder: (buildContext,snapShot) {
                        if (snapShot.hasError)
                         return Center(child: Text('${snapShot.error.toString()}'));
                        else if (snapShot.connectionState == ConnectionState.waiting)
                           return Center(child: CircularProgressIndicator());

                       var data = snapShot.data;

                        if (data?.success == false)
                          return Center(child: Text('${data?.status_message}'));

                        var results = data?.results;

                         return Expanded(
                           child: ListView.builder(
                             scrollDirection: Axis.horizontal,
                             itemBuilder: (_, index) {
                             return MovieCard(backdrop_path: results?[index].posterPath??'', originalTitle: results?[index].title??'', releaseDate: results?[index].releaseDate??'', voteAverage: results?[index].voteAverage??0,ismarked: true,);
                           }, itemCount: results?.length ?? 0,),
                         );
                      }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
