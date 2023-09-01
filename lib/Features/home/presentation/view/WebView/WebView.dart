import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:book_app/Features/home/data/model/book_model/book_model.dart';

class WebViewScreen extends StatelessWidget {
  final ModelBook books; // Declare the ModelBook object as a final property

  const WebViewScreen({Key? key, required this.books}) : super(key: key); // Use the correct syntax for the constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(books.volumeInfo.title!),
      ),
      body: WebView(
        initialUrl: books.volumeInfo.previewLink!, // Use the previewLink directly
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
      ),
    );
  }
}
