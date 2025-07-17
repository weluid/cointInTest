import 'package:coinin/core/extentions/context_extentions.dart';
import 'package:coinin/domain/params/radio_params.dart';
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

class RadioItem extends StatelessWidget {
  const RadioItem(this.item, {super.key, this.size = 24, this.onTap});

  final RadioParams item;
  final double size;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final radioSize = size + 8;
    final indicatorSize = size - 8;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: colors.primary.withValues(alpha: 0.1),
        onTap: onTap,
        child: Row(
          crossAxisAlignment: item.description != null
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (item.reverse) _TextView(item: item),
            if (item.reverse) const Spacer(),
            SizedBox(
              height: radioSize,
              width: radioSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  if (item.isSelected)
                    SizedBox(
                      height: radioSize,
                      width: radioSize,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4.0,
                            color: colors.inactiveColor,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(16),
                          ),
                          color: colors.primary,
                        ),
                      ),
                    ),
                  SizedBox(
                    height: size,
                    width: size,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: item.isSelected ? colors.primary : Colors.grey,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                        color: colors.inactiveColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: indicatorSize,
                    width: indicatorSize,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: item.isSelected
                            ? colors.primary
                            : Colors.transparent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (!item.reverse) _TextView(item: item),
          ],
        ),
      ),
    );
  }
}

class _TextView extends StatelessWidget {
  const _TextView({required this.item});

  final RadioParams item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(item.text, style: context.typography.headlineMedium),
          if (item.description != null)
            Text(
              item.description!,
              style: context.typography.titleMedium?.copyWith(
                color: context.colors.inactiveColor,
              ),
            ),
        ],
      ),
    );
  }
}
