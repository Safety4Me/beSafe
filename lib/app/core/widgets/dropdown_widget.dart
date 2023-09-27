import 'package:flutter/material.dart';

class DropdownWidget extends StatefulWidget {
  final TextEditingController controller;
  final List<dynamic> list;
  final Function(dynamic value) onSelected;
  final dynamic initialValue;
  final String labelText;
  final double? width;
  final double heightMenu;
  final bool? enableSearch;
  final TextStyle? textStyle;
  final InputDecorationTheme? inputDecoration;
  const DropdownWidget({
    super.key,
    required this.controller,
    required this.list,
    required this.onSelected,
    required this.initialValue,
    required this.labelText,
    this.width,
    required this.heightMenu,
    this.enableSearch,
    this.textStyle,
    this.inputDecoration,
  });

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<dynamic>> objEntries =
        <DropdownMenuEntry<dynamic>>[];
    for (final String obj in widget.list) {
      objEntries.add(
        DropdownMenuEntry<dynamic>(value: obj, label: obj, enabled: true),
      );
    }
    return DropdownMenu<dynamic>(
      initialSelection: widget.initialValue,
      controller: widget.controller,
      hintText: widget.labelText,
      enableSearch: widget.enableSearch ?? false,
      dropdownMenuEntries: objEntries,
      width: widget.width,
      menuHeight: widget.heightMenu,
      onSelected: (value) {
        widget.onSelected(value);
      },
      textStyle: widget.textStyle,
      inputDecorationTheme: widget.inputDecoration,
    );
  }
}
