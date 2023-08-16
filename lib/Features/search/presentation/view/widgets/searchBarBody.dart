import 'package:book_app/shard/styles/clors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../model/Book_model.dart';

class SearchBarBody extends StatefulWidget {
  const SearchBarBody({super.key});

  @override
  State<SearchBarBody> createState() => _SearchBarBodyState();
}

class _SearchBarBodyState extends State<SearchBarBody> {
  static List<BookModel> Book_Main_List = [
    BookModel(rate: 4.5, bookTitle: 'The Great Gatsby', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'To Kill a Mockingbird', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: '1984', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'The Catcher in the Rye', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Pride and Prejudice', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Harry Potter and the Sorcerer\'s Stone', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'The Lord of the Rings', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Animal Farm', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Brave New World', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Fahrenheit 451', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'The Hobbit', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'The Great Gatsby', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'To Kill a Mockingbird', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: '1984', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'The Catcher in the Rye', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Pride and Prejudice', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Harry Potter and the Sorcerer\'s Stone', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'The Lord of the Rings', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Animal Farm', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Brave New World', bookTitleUrl: AssetsData.test2),
    BookModel(rate: 4.5, bookTitle: 'Fahrenheit 451', bookTitleUrl: AssetsData.test2),
  ];

  List<BookModel>Display_List=List.from(Book_Main_List);

  void updateLise(String value) {
    setState(() {
      Display_List= Book_Main_List.where((element) => element.bookTitle!.toLowerCase().contains(value.toLowerCase())).toList();

    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
           TextFieldSearchBar(onChanged:updateLise ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Display_List.isEmpty ?  Center(
              child: Text('No matching books found.'),
            ) : ListView.builder(
              itemCount: Display_List.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  color: SecendColor,
                  borderOnForeground: true,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16), // Add padding to ListTile content
                    leading: Image.asset(
                      Display_List[index].bookTitleUrl,
                      width: 60,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      Display_List[index].bookTitle,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4),
                        Text(
                          'Rate: ${Display_List[index].rate.toString()}',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Author: John Doe', // Replace with actual author info
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.favorite_border),
                      onPressed: () {
                        // Add your favorite button functionality here
                      },
                    ),
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                );
              },
            ),

          ),
        ],
      ),

    );
  }
}

class TextFieldSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

 const TextFieldSearchBar({super.key, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
          fillColor: SecendColor,
          filled: true,
          enabledBorder: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(),
          hintText: 'Search',
          suffixIcon: Opacity(
              opacity: 0.7,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.magnifyingGlass),
              ))),
    );
  }
}

OutlineInputBorder BuildOutlineInputBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: WhiteColor,
      ));
}
