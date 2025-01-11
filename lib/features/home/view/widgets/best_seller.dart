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
      padding: const EdgeInsets.only(top: 8, bottom: 16,),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              FilterButton(
                label: '#Best Seller',
                isActive: selectedFilter == '#Best Seller',
                onTap: () {
                  setState(() {
                    selectedFilter = '#Best Seller';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#Latest',
                isActive: selectedFilter == '#Latest',
                onTap: () {
                  setState(() {
                    selectedFilter = '#Latest';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#Coming Soon',
                isActive: selectedFilter == '#Coming Soon',
                onTap: () {
                  setState(() {
                    selectedFilter = '#Coming Soon';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#Trending',
                isActive: selectedFilter == '#Trending',
                onTap: () {
                  setState(() {
                    selectedFilter = '#Trending';
                  });
                },
              ),
              const SizedBox(width: 6),
              FilterButton(
                label: '#Popular',
                isActive: selectedFilter == '#Popular',
                onTap: () {
                  setState(() {
                    selectedFilter = '#Popular';
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

