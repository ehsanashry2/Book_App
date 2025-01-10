import 'package:flutter/material.dart';
import 'package:innove_final_project/features/home/view/widgets/most_popular.dart';
class BestSeller extends StatefulWidget {
  const BestSeller({super.key});

  @override
  _BestSellerState createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  String selectedFilter = '#best seller';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 16,),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              FilterButton(
                label: '#best seller',
                isActive: selectedFilter == '#best seller',
                onTap: () {
                  setState(() {
                    selectedFilter = '#best seller';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#latest',
                isActive: selectedFilter == '#latest',
                onTap: () {
                  setState(() {
                    selectedFilter = '#latest';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#coming soon',
                isActive: selectedFilter == '#coming soon',
                onTap: () {
                  setState(() {
                    selectedFilter = '#coming soon';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#trending',
                isActive: selectedFilter == '#trending',
                onTap: () {
                  setState(() {
                    selectedFilter = '#trending';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#popular',
                isActive: selectedFilter == '#popular',
                onTap: () {
                  setState(() {
                    selectedFilter = '#popular';
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

