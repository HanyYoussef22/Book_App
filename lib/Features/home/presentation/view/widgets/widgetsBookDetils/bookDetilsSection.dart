import 'package:book_app/Features/home/presentation/view/widgets/secationRate.dart';
import 'package:book_app/core/utils/appRouter.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/core/utils/widget/customButton.dart';
import 'package:book_app/shard/styles/clors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../data/model/book_model/book_model.dart';
import '../widgetsHomeView/customListView.dart';

class BookDetilsSection extends StatelessWidget {
  ModelBook books;
  BookDetilsSection({super.key,required this.books});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHidth = MediaQuery.of(context).size.height;
    return Column(
      children: [ Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mediaWidth * 0.13, vertical: mediaHidth * .008),
        child: CustomListViewImage( imagrUrl:books.volumeInfo.imageLinks?.thumbnail ?? '',),

      ),
        SizedBox(
          height: mediaHidth * 0.035,
        ),
        Text(
          '${books.volumeInfo.title}',
          style: Styles.titleStyle30.copyWith(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: mediaHidth * 0.008,
        ),
        Text('${books.volumeInfo.authors}',
            style: Styles.titleStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w200,
                color: Colors.grey)),
        SizedBox(
          height: mediaHidth * 0.018,
        ),
        RateWidgets(rate: books,),
        SizedBox(
          height: mediaHidth * 0.035,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0,left: 8),
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                    backgroundColor: WhiteColor,
                    text: "Free",
                    textColor: Colors.black,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),)),
              ),Expanded(
                child: CustomButton(
                    onPressed: () async {
                      // final Uri uri = Uri.parse(books.volumeInfo.previewLink!); // Use Uri.parse to create a Uri from a string

                      // if (await canLaunch(uri.toString())) { // Use canLaunch instead of canLaunchUrl
                      //   await launch(uri.toString()); // Use launch instead of launchUrl
                      // } else {
                      //   print("Could not launch URL"); // Handle the case where the URL couldn't be launched
                      // }
                      GoRouter.of(context).push(AppRouter.kWebViewScreen
                      ,extra: books);
                    },
                    backgroundColor: OrangeColor,
                    text: "preview",
                    textColor: WhiteColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}