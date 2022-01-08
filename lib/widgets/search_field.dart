import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 2),
      margin: const EdgeInsets.only(top: 8),
      width: double.maxFinite,
      height: 40,

      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey[300],
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Expanded(
              child: TextFormField(

                controller: _controller,
                autofocus: false,
                readOnly:  false,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  prefixIcon: Visibility(

                    child: Icon(Icons.search, color: Colors.grey,),
                  ),
                  hintText: 'search',
                  hintStyle: TextStyle(color: Colors.grey),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              )),

        ],
      ),
    );
  }
}
