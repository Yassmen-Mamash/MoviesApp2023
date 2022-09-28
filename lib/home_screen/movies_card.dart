import 'package:flutter/material.dart';
import 'package:news_api/api/model/Modele_deal_with_time.dart';

class MovieCard extends StatelessWidget {

  String backdrop_path;
  String originalTitle;
  num voteAverage;
  String releaseDate;
  bool ismarked;
  MovieCard({required this.backdrop_path,required this.originalTitle,required this.releaseDate,required this.voteAverage,required this.ismarked});
  @override
  Widget build(BuildContext context) {
    return Card(
     color: Theme.of(context).primaryColor,
      shape:  OutlineInputBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      child:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: Image.network('https://image.tmdb.org/t/p/w500${backdrop_path}',
                    fit: BoxFit.fill,
                    height: 120,
                    width: 120,
                  ),
                ),
                (ismarked)? Image.asset('assets/images/bookmarked.png',height: 40,width: 30,): Image.asset('assets/images/bookmark.png',height: 40,width: 30,),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [
                 Image.asset('assets/images/star-2.png'),
                SizedBox(width:10 ,),
                Text('${voteAverage}',style: Theme.of(context).textTheme.titleSmall,)
              ],
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: () {

              },
              child: SizedBox( width:120,
                child: Text(originalTitle,style: Theme.of(context).textTheme.titleSmall,overflow:TextOverflow.ellipsis,maxLines:1,)),
            ),
            SizedBox(height: 10,),

            Text(MyDateUtalits.fromatNewsDate(releaseDate),style: Theme.of(context).textTheme.bodyMedium,),

          ],
        ),
      ),
    );
  }

}
