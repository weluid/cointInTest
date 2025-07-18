import 'package:coinin/domain/params/radio_params.dart';
import 'package:coinin/presentation/widgets/common_radio_list/radio_item.dart';
import 'package:flutter/material.dart';

class CommonRadioList extends StatefulWidget {
  const CommonRadioList({
    super.key,
    required this.elements,
    this.paddingSize = 10,
  });

  final List<RadioParams> elements;
  final double paddingSize;

  @override
  State<CommonRadioList> createState() => _CommonRadioListState();
}

class _CommonRadioListState extends State<CommonRadioList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.elements.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: index > 0 ? widget.paddingSize : 0),
          child: RadioItem(
            widget.elements[index],
            onTap: () {
              setState(() {
                for (var element in widget.elements) {
                  element.isSelected = false;
                }
                widget.elements[index].isSelected = true;
              });
              widget.elements[index].inRadioTap();
            },
          ),
        );
      },
    );
  }
}
