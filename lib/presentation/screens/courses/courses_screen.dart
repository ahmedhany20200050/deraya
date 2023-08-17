import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Center(
          child: Column(
            children: [
              TextWidget(
                  title:  "CoursesScreen"
              )
            ],
          ),
        )

    );
  }
}
