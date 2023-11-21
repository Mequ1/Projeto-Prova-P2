import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fotos de Gatos'),
        ),
        body: CatPhotoScreen(),
      ),
    );
  }
}

class CatPhotoScreen extends StatefulWidget {
  @override
  _CatPhotoScreenState createState() => _CatPhotoScreenState();
}

class _CatPhotoScreenState extends State<CatPhotoScreen> {
  List<String> catImageUrls = [];

  Future<void> _getCatPhotos() async {
    const String apiUrl = 'https://api.thecatapi.com/v1/images/search';
    const int limit = 5;

    try {
      final response = await http.get(
        Uri.parse('$apiUrl?limit=$limit'),
      );

      if (response.statusCode == 200) {
        List<dynamic> data = jsonDecode(response.body);
        List<String> newCatUrls =
            data.map((cat) => cat["url"].toString()).toList();

        setState(() {
          catImageUrls.addAll(newCatUrls);
        });
      } else {
        print('Falha na requisição: Status Code ${response.statusCode}');
      }
    } catch (e) {
      print('Ocorreu um erro: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: _getCatPhotos,
          child: Text('Carregar 5 Fotos de Gatos'),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: catImageUrls.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(catImageUrls[index], fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}
