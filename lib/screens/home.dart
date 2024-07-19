import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 105.h,
            child: ListView(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 277.w,
                          height: 50.h,
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(245, 245, 245, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: TextField(
                              controller: searchController,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(186, 186, 186, 1),
                              ),
                              decoration: InputDecoration(
                                icon: SvgPicture.asset(
                                  'assets/icons/search.svg',
                                  color: const Color.fromRGBO(186, 186, 186, 1),
                                ),
                                hintText: 'Search here',
                                hintStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      CircleAvatar(
                        minRadius: 25.w,
                        maxRadius: 25.w,
                        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
                        child: SvgPicture.asset(
                          'assets/icons/filter.svg',
                          color: const Color.fromRGBO(186, 186, 186, 1),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 40.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      const CategoryPill(
                        text: 'Real estate',
                        isActive: true,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CategoryPill(
                        text: 'Apartment',
                        isActive: false,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CategoryPill(
                        text: 'House',
                        isActive: false,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      const CategoryPill(
                        text: 'Hotel',
                        isActive: false,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 200.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 16.w,
                      ),
                      const ListingWidget(
                        asset: 'assets/images/img_1.png',
                        price: '\$293,290.00',
                        location: '123 Street, NY',
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const ListingWidget(
                        asset: 'assets/images/img_2.png',
                        price: '\$293,290.00',
                        location: '498 Street, CA',
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Listings',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color.fromRGBO(180, 180, 180, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 201.h,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.h,
                      crossAxisSpacing: 15.w,
                      mainAxisExtent: 93.h,
                    ),
                    itemBuilder: (context, index) {
                      List<Color> colors = [
                        const Color.fromRGBO(63, 199, 109, 1),
                        const Color.fromRGBO(70, 90, 241, 1),
                        const Color.fromRGBO(225, 9, 125, 1),
                        const Color.fromRGBO(219, 154, 28, 1),
                      ];

                      List<String> labels = [
                        'New Listing',
                        'New Apartment',
                        'New House',
                        'Sold Houses',
                      ];

                      return Container(
                        alignment: Alignment.center,
                        width: 164.w,
                        height: 93.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: colors[index],
                        ),
                        child: Text(
                          labels[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(
              left: 25.w,
              right: 25.w,
              bottom: 10.h,
            ),
            child: SizedBox(
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/home.svg',
                        color: const Color.fromRGBO(255, 167, 56, 1),
                      ),
                      const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 9,
                          color: Color.fromRGBO(255, 167, 56, 1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/message.svg',
                        color: Colors.black,
                      ),
                      const Text(
                        'Inbox',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    minRadius: 20.w,
                    maxRadius: 20.w,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25.h,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/profile.svg',
                        color: Colors.black,
                      ),
                      const Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/more.svg',
                        color: Colors.black,
                      ),
                      const Text(
                        'More',
                        style: TextStyle(
                          fontSize: 9,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryPill extends StatelessWidget {
  const CategoryPill({super.key, required this.text, required this.isActive});

  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : const Color.fromRGBO(245, 245, 245, 1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 14,
          color:
              isActive ? Colors.white : const Color.fromRGBO(186, 186, 186, 1),
        ),
      ),
    );
  }
}

class ListingWidget extends StatelessWidget {
  const ListingWidget(
      {super.key,
      required this.asset,
      required this.price,
      required this.location});

  final String asset;
  final String price;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(asset),
        SizedBox(
          height: 10.h,
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Text(
          location,
          style: const TextStyle(
            fontSize: 13,
            color: Color.fromRGBO(180, 180, 180, 1),
          ),
        ),
      ],
    );
  }
}
