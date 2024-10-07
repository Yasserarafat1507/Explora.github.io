import 'package:dicoding/model/recomended_model.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class RecommendedDetailScreen extends StatelessWidget {
  const RecommendedDetailScreen({super.key, required this.recommended, });

  final RecomendedModel recommended;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(recommended: recommended,),
    );
  }
}