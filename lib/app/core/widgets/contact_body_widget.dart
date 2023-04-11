import 'package:besafe/besafe.dart';
import 'package:flutter/material.dart';

class ContactBodyWidget extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController commentController;
  final TextEditingController telephoneController;
  final double getCardWidth;
  final bool isLandscape;
  final bool landscapeOrientation;
  final String? contactSessionName;
  final String? contactSessionTelephone;
  final String? contactSessionEmail;
  final String nameRequired;
  final String name;
  final String phoneOrEmailRequired;
  final String emailPlaceHolder;
  final String phoneNumber;
  final String messageAnonymous;
  final String comment;
  final GlobalKey<FormState> formKey;
  ContactBodyWidget({
    Key? key,
    required this.nameController,
    required this.telephoneController,
    required this.commentController,
    required this.emailController,
    required this.formKey,
    required this.getCardWidth,
    required this.isLandscape,
    required this.landscapeOrientation,
    required this.contactSessionName,
    required this.contactSessionTelephone,
    required this.contactSessionEmail,
    required this.nameRequired,
    required this.name,
    required this.phoneOrEmailRequired,
    required this.emailPlaceHolder,
    required this.phoneNumber,
    required this.messageAnonymous,
    required this.comment,
  }) : super(key: key);

  @override
  State<ContactBodyWidget> createState() => _ContactBodyWidgetState();
}

class _ContactBodyWidgetState extends State<ContactBodyWidget> {
  bool isAnonymous = false;

  @override
  void initState() {
    if (widget.contactSessionName != null) {
      widget.nameController.text =
          widget.contactSessionName != null ? widget.contactSessionName! : '';
      widget.emailController.text =
          widget.contactSessionEmail != null ? widget.contactSessionEmail! : '';
      widget.telephoneController.text = widget.contactSessionTelephone != null
          ? widget.contactSessionTelephone!
          : '';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardHeight = size.height * 0.6;
    return Form(
      key: widget.formKey,
      child: SizedBox(
        height: cardHeight,
        width: widget.getCardWidth * 0.95,
        child: Column(
          children: [
            Visibility(
              visible: !isAnonymous,
              child: Expanded(
                child: TextFormFieldWidget(
                  isLandscape: widget.isLandscape,
                  landscapeOrientation: widget.landscapeOrientation,
                  controller: widget.nameController,
                  keyboarType: TextInputType.name,
                  validator: (String? value) {
                    if (value!.isEmpty &&
                        (widget.telephoneController.text.isNotEmpty ||
                            widget.emailController.text.isNotEmpty)) {
                      return widget.nameRequired;
                    }
                    return null;
                  },
                  textColor: Theme.of(context).primaryColor,
                  text: widget.name,
                  maxLines: 1,
                ),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: !isAnonymous,
                child: TextFormFieldWidget(
                  isLandscape: widget.isLandscape,
                  landscapeOrientation: widget.landscapeOrientation,
                  controller: widget.emailController,
                  keyboarType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if (value!.isEmpty &&
                        widget.nameController.text.isNotEmpty &&
                        widget.telephoneController.text.isEmpty) {
                      return widget.phoneOrEmailRequired;
                    }
                    return null;
                  },
                  textColor: Theme.of(context).primaryColor,
                  text: widget.emailPlaceHolder,
                  maxLines: 1,
                ),
              ),
            ),
            Expanded(
              child: Visibility(
                visible: !isAnonymous,
                child: TextFormFieldWidget(
                  isLandscape: widget.isLandscape,
                  landscapeOrientation: widget.landscapeOrientation,
                  controller: widget.telephoneController,
                  keyboarType: TextInputType.phone,
                  validator: (String? value) {
                    if (value!.isEmpty &&
                        widget.nameController.text.isNotEmpty &&
                        widget.emailController.text.isEmpty) {
                      return widget.phoneOrEmailRequired;
                    }
                    return null;
                  },
                  textColor: Theme.of(context).primaryColor,
                  text: widget.phoneNumber,
                  maxLines: 1,
                ),
              ),
            ),
            Expanded(
              child: TextFormFieldWidget(
                isLandscape: widget.isLandscape,
                landscapeOrientation: widget.landscapeOrientation,
                controller: widget.commentController,
                keyboarType: TextInputType.multiline,
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return null;
                  }
                  return null;
                },
                textColor: Theme.of(context).primaryColor,
                text: widget.comment,
                maxLines: 1,
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: Colors.blue,
                  value: isAnonymous,
                  onChanged: (bool? value) {
                    setState(() {
                      if (isAnonymous == false) {
                        isAnonymous = value!;
                        widget.nameController.text = '';
                        widget.emailController.text = '';
                        widget.telephoneController.text = '';
                      } else {
                        isAnonymous = value!;
                        widget.nameController.text =
                            widget.contactSessionName != null
                                ? widget.contactSessionName!
                                : '';
                        widget.emailController.text =
                            widget.contactSessionEmail != null
                                ? widget.contactSessionEmail!
                                : '';
                        widget.telephoneController.text =
                            widget.contactSessionTelephone != null
                                ? widget.contactSessionTelephone!
                                : '';
                      }
                    });
                  },
                ),
                Text(
                  widget.messageAnonymous,
                  style: TextStyle(
                      color: Theme.of(context).primaryColor, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
