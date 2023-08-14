import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/utils/widget/customButton.dart';
import '../../../../../../shard/styles/clors.dart';
import '../widgetsHomeView/ItemBestSeller.dart';
import '../widgetsHomeView/customListView.dart';
import '../widgetsHomeView/featherListView.dart';
import 'Similerlistview.dart';
import 'customAppBar.dart';

class BookDetilsBody extends StatelessWidget {
  const BookDetilsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHidth = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.only(left: mediaHidth * 0.044, right: mediaHidth * 0.044),
      child: Column(

        children: [
          const CustomAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: mediaWidth * 0.24, vertical: mediaHidth * .008),
            child: CustomListViewItem(),
          ),
          SizedBox(
            height: mediaHidth * 0.035,
          ),
          Text(
            'The Jungle Book',
            style: Styles.titleStyle30.copyWith(
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: mediaHidth * 0.008,
          ),
          Text('Rudyard Kipling',
              style: Styles.titleStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w200,
                  color: Colors.grey)),
          SizedBox(
            height: mediaHidth * 0.018,
          ),
          const RateWidgets(),
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
                      text: "19.99 €",
                      textColor: Colors.black,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),)),
                ),Expanded(
                  child: CustomButton(
                      backgroundColor: OrangeColor,
                      text: "Free preview",
                      textColor: WhiteColor,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),)),
                ),
              ],
            ),
          ),

          SizedBox(
            height: mediaHidth * 0.03,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.titleStyle14N,
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: mediaHidth * 0.009,
          ),
          SizedBox(height: mediaHidth * 0.18, child: const SimilarBooksListView())
        ],
      ),
    );
  }
}












class PriceContiner extends StatelessWidget {
  const PriceContiner({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHidth = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: mediaWidth * 0.35,
          height: mediaHidth * 0.07,
          decoration: BoxDecoration(
              color: WhiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15))),
          child: Center(
            child: Text(
              "19.99 €",
              style: Styles.titleStyle20N.copyWith(color: Colors.black),
            ),
          ),
        ),
        Container(
          width: mediaWidth * 0.35,
          height: mediaHidth * 0.07,
          decoration: BoxDecoration(
              color: OrangeColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15))),
          child: Center(
              child: Text(
            'text2',
            style: Styles.titleStyle18N,
          )),
        ),
      ],
    );
  }
}
