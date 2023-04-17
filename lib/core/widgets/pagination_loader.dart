// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:visibility_detector/visibility_detector.dart';

// import 'package:internal_business_cards/assets/colors.dart';

// class PaginationLoader extends StatefulWidget {
//   final ScrollPhysics? scrollPhysics;
//   final EdgeInsets? margin;
//   final EdgeInsets? padding;
//   final List<dynamic> list;
//   final int totalPages;
//   final int currentPage;
//   final bool isLoading;
//   final VoidCallback onLoadMore;
//   final double seperatorHeight;
//   final bool isFailedToLoad;
//   final bool isReversed;
//   final ScrollController? controller;
//   const PaginationLoader({
//     required this.list,
//     required this.totalPages,
//     required this.currentPage,
//     required this.isLoading,
//     required this.onLoadMore,
//     required this.isFailedToLoad,
//     this.seperatorHeight = 0,
//     this.isReversed = false,
//     this.controller,
//     this.scrollPhysics,
//     this.margin,
//     this.padding,
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<PaginationLoader> createState() => _PaginationLoaderState();
// }

// class _PaginationLoaderState extends State<PaginationLoader> {
//   late ScrollController scrollController;
//   @override
//   void initState() {
//     if (widget.controller != null) {
//       scrollController = widget.controller!;
//     } else {
//       scrollController = ScrollController();
//     }

//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       if (widget.isReversed) {
//         scrollController.jumpTo(scrollController.position.maxScrollExtent);
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) => Container(
//         margin: widget.margin,
//         child: SingleChildScrollView(
//           controller: scrollController,
//           padding: widget.padding,
//           physics: widget.scrollPhysics,
//           child: Column(
//             children: [
//               if (widget.isReversed) ...{
//                 if (widget.totalPages > widget.currentPage)
//                   VisibilityDetector(
//                     key: const Key('my-key'),
//                     onVisibilityChanged: (visibilityInfo) {
//                       final visibilityPercentage =
//                           visibilityInfo.visibleFraction * 100;
//                       if (visibilityPercentage == 100) {
//                         widget.onLoadMore();
//                       }
//                     },
//                     child: !widget.isFailedToLoad
//                         ? const SpinKitThreeBounce(size: 20, color: grey)
//                         : const SizedBox(),
//                   )
//               },
//               // ListView.separated(
//               //   shrinkWrap: true,
//               //   physics: const ClampingScrollPhysics(),
//               //   itemBuilder: (_, index) => widget.list[index],
//               //   separatorBuilder: (_, __) =>
//               //       SizedBox(height: widget.seperatorHeight),
//               //   itemCount: widget.list.length,
//               // ),
//               ...List.generate(
//                 widget.list.length,
//                 (index) => Container(
//                   padding: EdgeInsets.only(bottom: widget.seperatorHeight),
//                   child: widget.list[index],
//                 ),
//               ),
//               if (!widget.isReversed) ...{
//                 if (widget.totalPages > widget.currentPage)
//                   VisibilityDetector(
//                     key: const Key('my-key'),
//                     onVisibilityChanged: (visibilityInfo) {
//                       final visibilityPercentage =
//                           visibilityInfo.visibleFraction * 100;
//                       if (visibilityPercentage == 100) {
//                         widget.onLoadMore();
//                       }
//                     },
//                     child: !widget.isFailedToLoad
//                         ? const SpinKitThreeBounce(size: 20, color: grey)
//                         : const SizedBox(),
//                   )
//               },
//             ],
//           ),
//         ),
//       );
// }
