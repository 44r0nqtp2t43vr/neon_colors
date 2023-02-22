import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaskedImage extends StatelessWidget {
  const MaskedImage({
    super.key,
    required this.asset,
    required this.mask,
    required this.alignment,
  });

  final String asset;
  final String mask;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FutureBuilder<List>(
        future: _createShaderAndImage(asset, mask, constraints.maxWidth,
            constraints.maxHeight, alignment),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const SizedBox.shrink();
          return ShaderMask(
            blendMode: BlendMode.dstATop,
            shaderCallback: (rect) => snapshot.data![0],
            child: snapshot.data![1],
          );
        },
      );
    });
  }

  Future<List> _createShaderAndImage(
    String asset,
    String mask,
    double w,
    double h,
    AlignmentGeometry alignment,
  ) async {
    ByteData data = await rootBundle.load(asset);
    ByteData maskData = await rootBundle.load(mask);

    Codec codec = await instantiateImageCodec(
      maskData.buffer.asUint8List(),
      targetWidth: w.toInt(),
      targetHeight: h.toInt(),
    );
    FrameInfo fi = await codec.getNextFrame();

    ImageShader shader = ImageShader(
      fi.image,
      TileMode.clamp,
      TileMode.clamp,
      Matrix4.identity().storage,
    );
    Image image = Image.memory(
      data.buffer.asUint8List(),
      alignment: alignment,
      fit: BoxFit.cover,
      width: w,
      height: h,
    );
    return [shader, image];
  }
}
