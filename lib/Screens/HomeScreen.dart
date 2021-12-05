import 'package:flutter/material.dart';
import 'package:ytsamovies/Models/MovieSuggestionsModel.dart';
import 'package:ytsamovies/Services/ServiceHandler.dart';
import 'package:ytsamovies/Widgets/AppBar.dart';
import 'package:ytsamovies/Widgets/MovieTile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<MovieSuggestions> movieSuggestions;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    movieSuggestions=fetchMovieSuggestions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.grey[900],
          child: Stack(
      children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              boxShadow: [new BoxShadow(
              color: Colors.black,
              blurRadius: 15.0,
            ),],
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(60),
                // /  bottomRight: Radius.circular(60)
                  ),
            ),
          ),
          AppBarCustom(),
       Text("Suggestions",style: TextStyle(
            fontSize:15,
            color:Colors.white,
          ),),
          Container(
            height: 250,
            //padding: EdgeInsets.only(left:50),
            margin: EdgeInsets.only(top:150),
            child: FutureBuilder<MovieSuggestions>(
              future: movieSuggestions,
              builder:(context,AsyncSnapshot<MovieSuggestions> snapshot){
                if(snapshot.hasData)
                {
                 
                   return ListView.builder(
              itemCount: snapshot.data.data.movieCount,
              scrollDirection: Axis.horizontal,
              itemBuilder:(context,int index){
                return MovieTile(movie: snapshot.data.data.movies[index],);

            });
                }else
                {
                    return Center(child: CircularProgressIndicator());
                }


            }) 
            ),
            
      ],
    ),
        ));
  }
}
