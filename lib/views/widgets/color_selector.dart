import 'package:flutter/material.dart';

class ColorSelector extends StatefulWidget {
  const ColorSelector(
      {Key? key, required this.onSelected, required this.colors})
      : super(key: key);
  final Function(int) onSelected;
  final List<int> colors;
  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  List<bool> states = [];
  @override
  void initState() {
    for (var i = 0; i < widget.colors.length; i++) {
      states.add(i == 0 ? true : false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Available Colors: ',
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.colors.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  for (var i = 0; i < widget.colors.length; i++) {
                    states[i] = false;
                  }
                  states[index] = true;
                });
                widget.onSelected(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: states[index]
                      ? Color(widget.colors[index]).withOpacity(0.3)
                      : Colors.transparent,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color: Color(widget.colors[index]),
                    shape: BoxShape.circle,
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
