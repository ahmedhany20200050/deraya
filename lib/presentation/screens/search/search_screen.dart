import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body:Center(
      child: Column(
       children: [
         TextWidget(
          title:  "SearchScreen"
         )
       ],
      ),
    )

    );
  }
}
