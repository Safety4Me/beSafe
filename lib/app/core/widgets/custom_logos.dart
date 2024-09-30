// ignore_for_file: sized_box_for_whitespace

import 'dart:typed_data';

import 'package:flutter/material.dart';

class CustomLogos extends StatelessWidget {
  final bool isLandscape;
  final CrossAxisAlignment positionLogo;
  final String? logoCliente;
  final double size;
  const CustomLogos({
    Key? key,
    required this.logoCliente,
    required this.isLandscape,
    required this.positionLogo,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isLandscape
        ? Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              logoCliente != null
                  ? Image.network(
                      logoCliente!,
                      fit: BoxFit.contain,
                      height: MediaQuery.of(context).size.height * size,
                      width: MediaQuery.of(context).size.height * size,
                      errorBuilder: (context, error, stackTrace) {
                        debugPrint('Erro ao carregar imagem: $error');
                        return Center(child: Icon(Icons.error));
                      },
                    )
                  : Container(),
            ],
          )
        : Container(
            width: 190,
            child: Column(
              crossAxisAlignment: positionLogo,
              children: [
                logoCliente != null
                    ? Image.network(
                        logoCliente!,
                        height: MediaQuery.of(context).size.height * size,
                        width: MediaQuery.of(context).size.height,
                        errorBuilder: (context, error, stackTrace) {
                          debugPrint('Erro ao carregar imagem: $error');
                          return Center(child: Icon(Icons.error));
                        },
                      )
                    : Container(),
              ],
            ),
          );
  }
}
