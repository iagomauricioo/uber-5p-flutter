import 'package:flutter/material.dart';
import 'package:novo_uber_flutter/themes/CustomTextStyle.dart';
import 'package:novo_uber_flutter/themes/CustomTheme.dart';

class TravelOptionCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final bool isNetworkImage;

  const TravelOptionCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    this.isNetworkImage = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Largura ajustada para evitar overflow
      margin: const EdgeInsets.symmetric(horizontal: 8), // Margem entre cards
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Ocupa apenas o espaço necessário
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // --- Imagem ---
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: isNetworkImage
                ? Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 130,
                    fit: BoxFit.cover,
                  )
                : Image.asset(
                    imageUrl,
                    width: double.infinity,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
          ),

          const SizedBox(height: 8), // Espaço entre imagem e textos

          // --- Título com ícone ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Text(
                  title,
                  style: CustomTextStyle.bodyMedium,
                ),
                const SizedBox(width: 4),
                const Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: CustomTheme.primaryText,
                ),
              ],
            ),
          ),

          // --- Descrição ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              description,
              style: CustomTextStyle.bodyMedium
                  .copyWith(fontSize: 14, color: Colors.grey),
              maxLines: 2, // Limita a 2 linhas
              overflow: TextOverflow.ellipsis, // Adiciona "..." se overflow
            ),
          ),
        ],
      ),
    );
  }
}
