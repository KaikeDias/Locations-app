import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = false;
  int count = 40;

  _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        count--;
      } else {
        _isFavorite = true;
        count++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          alignment: Alignment.centerRight,
          icon: Icon(
            _isFavorite ? Icons.star : Icons.star_border,
            color: Colors.red[500],
          ),
          onPressed: () => _toggleFavorite(),
        ),
        SizedBox(
          width: 18,
          child: Text('$count'),
        )
      ],
    );
  }
}
