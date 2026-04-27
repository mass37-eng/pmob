import 'package:flutter/material.dart';

class IngressosScreen extends StatelessWidget {
  const IngressosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final itens = [
      'ÁREA DE SÓCIOS',
      'TORCIDA VISITANTE',
      'ÁREA DE NÃO-SÓCIOS',
      'CAMAROTES',
      'IMPRENSA',
      'TRIBUNA DE HONRA',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('VASCO PLAY'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            'INGRESSOS',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: itens.length,
              itemBuilder: (context, index) {
                final isDark = index % 2 == 0;

                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 26),
                  color: isDark ? Colors.grey[400] : Colors.grey[300],
                  child: Center(
                    child: Text(
                      itens[index],
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}