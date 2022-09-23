import 'package:booking_hotel/business_logic/business_logic.dart';
import 'package:booking_hotel/core/styles/colors.dart';
import 'package:booking_hotel/presentation/view/explore_search_selector.dart';
import 'package:booking_hotel/presentation/widget/default_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreSearchBar extends StatelessWidget {
  const ExploreSearchBar({
    Key? key,
    required this.explore,
    required this.show,
  }) : super(key: key);

  final ExploreCubit explore;
  final bool show;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      alignment: Alignment.topCenter,
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 300),
      child: Container(
        height: show ? null : 0,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: explore.currentLayoutIndex == 0 ? 0 : 10.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      MyFormField(
                        borderRadius: 40.r,
                        controller: explore.searchC,
                        prefix: null,
                        validateText: explore.searchC.text,
                        inputType: TextInputType.text,
                        hintText: "Search...",
                        suffix: Icons.arrow_downward_outlined,
                        suffixPressed: explore.toggleSearchTypes,
                      ),
                      ExploreSearchSelector(
                        show: explore.showSearchTypes,
                        onChange: explore.updateSelectedSearchType,
                        currentValue: explore.searchType,
                        color: explore.currentLayoutIndex == 0
                            ? AppColor.grey
                            : AppColor.white,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Material(
                  shape: const CircleBorder(),
                  color: AppColor.teal,
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: explore.search,
                    child: SizedBox(
                      width: 60.w,
                      height: 60.h,
                      child: Icon(
                        Icons.search,
                        color: AppColor.white,
                        size: 25.r,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}