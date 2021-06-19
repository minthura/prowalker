import 'package:flutter/material.dart';

class ItemSelector extends StatefulWidget {
  const ItemSelector(
      {Key? key, required this.onSelected, required this.itemTexts})
      : super(key: key);
  final Function(int) onSelected;
  final List<String> itemTexts;
  @override
  _ItemSelectorState createState() => _ItemSelectorState();
}

class _ItemSelectorState extends State<ItemSelector> {
  List<bool> states = [];
  @override
  void initState() {
    for (var i = 0; i < widget.itemTexts.length; i++) {
      states.add(i == 0 ? true : false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Size: ',
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.itemTexts.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  for (var i = 0; i < widget.itemTexts.length; i++) {
                    states[i] = false;
                  }
                  states[index] = true;
                });
                widget.onSelected(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: states[index] ? Color(0xffa1dbf5) : Colors.white,
                ),
                child: Text(
                  widget.itemTexts[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
