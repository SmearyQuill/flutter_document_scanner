import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_document_scanner/flutter_document_scanner.dart';
import 'package:flutter_document_scanner/src/utils/edit_photo_document_style.dart';

class BottomBarEditPhoto extends StatelessWidget {
  final EditPhotoDocumentStyle editPhotoDocumentStyle;

  const BottomBarEditPhoto({
    Key? key,
    required this.editPhotoDocumentStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (editPhotoDocumentStyle.hideBottomBarDefault) return Container();

    return Positioned(
      bottom: MediaQuery.of(context).padding.bottom,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // * Natural
            TextButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().applyFilter(
                        FilterType.natural,
                      ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text(
                "Natural",
              ),
            ),

            // * Gray
            TextButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().applyFilter(
                        FilterType.gray,
                      ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text(
                "GRISES",
              ),
            ),

            // * ECO
            TextButton(
              onPressed: () =>
                  context.read<DocumentScannerController>().applyFilter(
                        FilterType.eco,
                      ),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              child: const Text(
                "ECO",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
