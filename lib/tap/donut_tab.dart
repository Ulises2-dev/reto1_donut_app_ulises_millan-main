import 'package:flutter/material.dart';
import 'package:reto1_donut_app_ulises_millan/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // Lista de donuts
  final List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  // Cantidad de ítems y total del carrito
  final int cartItems = 2;
  final double cartTotal = 45.0;

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Lista de donuts en venta (grid)
        Expanded(
          child: GridView.builder(
            itemCount: donutsOnSale.length,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 1.5),
            itemBuilder: (context, index) {
              return DonutTile(
                donutFlavor: donutsOnSale[index][0],
                donutPrice: donutsOnSale[index][1],
                donutColor: donutsOnSale[index][2],
                imageName: donutsOnSale[index][3],
              );
            },
          ),
        ),

        // Contenedor estático con información del carrito
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), // Bordes curvos a la izquierda
              topRight: Radius.circular(30), // Bordes curvos a la derecha
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Texto de cantidad y total
              const Text(
                '2 Items | \$45',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              // Botón simulado para ver carrito
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.pink, // Color rosa
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Ver Carrito',
                  style: TextStyle(
                    color: Colors.white, // Letras blancas
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

