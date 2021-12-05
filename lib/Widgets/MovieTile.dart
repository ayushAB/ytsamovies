import 'package:flutter/material.dart';
import 'package:ytsamovies/Models/MovieSuggestionsModel.dart';
import 'package:ytsamovies/Widgets/GenreTile.dart';

class MovieTile extends StatefulWidget {
  final Movies movie;
  MovieTile({this.movie});
  @override
  _MovieTileState createState() => _MovieTileState();
}

class _MovieTileState extends State<MovieTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 350,
      height: 250,
      decoration: BoxDecoration(
       // color: Colors.blue,
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 1.0,
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        image:DecorationImage(
          image: NetworkImage(
              widget.movie.mediumCoverImage),
          fit: BoxFit.contain,
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                    height: 150,
                padding: EdgeInsets.all(25),
                child: Text(
                  widget.movie.titleLong,
                  style: TextStyle(
                      color: Colors.white, fontSize: 30,
                      fontWeight: FontWeight.w900,
                      ),
                      overflow:TextOverflow.visible,
                      
                ),
              )),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top:60,left:10),
                  child: Text(widget.movie.runtime.toString()+" Min",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.7), fontSize: 15),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.movie.genres.length,
                        itemBuilder: (context, index) {
                          return GenreTile(widget.movie.genres[index].toString());
                        })
              )
            ],
          )
        ],
      ),
    );
  }
}
