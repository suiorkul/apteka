import 'dart:collection';

import 'package:flutter/foundation.dart';


class Product with ChangeNotifier{
  final String id;
  final String title;
  final String description;
  final num price;
  final String imgUrl;
  final color;

  Product({
    @required this.id, 
    @required this.title, 
    @required this.description, 
    @required this.price,
    @required this.imgUrl, 
    @required this.color
  });
}

class ProductDataProvider with ChangeNotifier {

  List<Product> _items = [
    Product(
      id: 'p3',
      title: 'Парацетамол',
      description: ' Анальгетик-антипиретик. Обладает анальгезирующим, жаропонижающим и слабым противовоспалительным действием.',
      price: 15.00,
      imgUrl: 'https://uteka.ru/media/1024/0/72/072791f0b290787653a87a6464e2de21.jpg',
      color: '0xFFFFF59D',
    ),
    Product(
      id: 'p1',
      title: 'Аналгин',
      description: 'Анальгин (метамизол натрия) проявляет анальгезирующее, жаропонижающее и противовоспалительное действие. Анальгетический эффект обусловлен ингибицией',
      price: 77.99,
      imgUrl: 'data:image/jpeg;base64,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',
      color: '0xFFBBDEFB',
    ),
    Product(
      id: 'p2',
      title: 'Новокаин',
      description: ' Местноанестезирующее средство с умеренной анестезирующей активностью и большой широтой терапевтического действия.',
      price: 99.99,
      imgUrl: 'https://lh3.googleusercontent.com/fwbJUWOGx_oJAorYZtIvrqN3aCuK0QzB9JmdltE1UQMV18yZsVFH1ws62wtE4K28yZEsMw0=s85',
      color: '0xFFF8BBD0',
    ),
    Product(
      id: 'p4',
      title: 'Ношпа',
      description: 'Спазмолитическое средство, производное изохинолина. Оказывает мощное спазмолитическое действие на гладкую мускулатуру за счет ингибирования',
      price: 35.99,
      imgUrl: 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.vidal.ru%2Fupload%2Fproducts%2Fno-spa-amp.jpg&imgrefurl=https%3A%2F%2Fwww.vidal.ru%2Fdrugs%2Fno-spa__592&tbnid=_1nkmtVOFtbZWM&vet=12ahUKEwiR9obeipz0AhXwiIsKHfZSCKkQMygAegQIARAX..i&docid=sqSs6y84rdKdpM&w=500&h=500&itg=1&q=%D0%BD%D0%BE%20%D1%88%D0%BF%D0%B0%20%D1%82%D0%B0%D0%B1%D0%BB%2040%D0%BC%D0%B3%20%E2%84%96%2024&ved=2ahUKEwiR9obeipz0AhXwiIsKHfZSCKkQMygAegQIARAX',
      color: '0xFFCCFF90',
    ),
  ];

  UnmodifiableListView<Product> get items => UnmodifiableListView(_items);

  Product getElementById(String id) 
    => _items.singleWhere((value) => value.id == id);

}