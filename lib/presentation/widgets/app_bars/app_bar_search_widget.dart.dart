import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:summit_ias/core/constant/colors.dart';

class AppBarSearchWidget extends StatelessWidget with PreferredSizeWidget {
  AppBarSearchWidget({
    Key? key,
    this.title,
    this.actions,
    this.leading,
    this.elevation,
    this.backgroundColor = kAppBarColor,
    required this.valueListenable,
  }) : super(key: key);
  final Widget? title;
  final Widget? leading;
  final List<Widget>? actions;
  final double? elevation;
  final Color? backgroundColor;
  final ValueListenable<bool> valueListenable;
  final TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      builder: (BuildContext context, bool isSearch, Widget? child) {
        return AppBar(
          leading: isSearch ? leading : null,
          title: !isSearch
              ? title
              : Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 40,
                      child: TextFormField(
                        controller: controller,
                        style: TextStyle(fontSize: 16.sp),
                        decoration: InputDecoration(
                          isDense: true,
                          fillColor: kWhite,
                          filled: true,
                          contentPadding: EdgeInsets.zero,
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: kWhite),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () => controller?.clear(),
                            icon: const Icon(Icons.clear),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
          actions: !isSearch ? actions : null,
          backgroundColor: backgroundColor,
          elevation: elevation,
        );
      },
      valueListenable: valueListenable,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
