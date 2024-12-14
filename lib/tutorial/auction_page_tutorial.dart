import 'package:flutter/material.dart';
import '../tutorial/tutorial_overlay.dart';

class AuctionPageTutorial {
  static List<TutorialStep> getSteps(BuildContext context, List<GlobalKey> keys) {
    return [
      TutorialStep(
        title: 'Available Auctions',
        description: 'Browse all active auctions from other farmers',
        position: _getWidgetPosition(keys[0]),
        size: _getWidgetSize(keys[0]),
        offset: const Offset(0, -58),
      ),
      TutorialStep(
        title: 'My Auctions',
        description: 'View and manage your own auction listings',
        position: _getWidgetPosition(keys[1]),
        size: _getWidgetSize(keys[1]),
        offset: const Offset(0, -58),
      ),
      TutorialStep(
        title: 'Search & Filter',
        description: 'Find specific items or filter by category',
        position: _getWidgetPosition(keys[2]),
        size: _getWidgetSize(keys[2]),
        offset: const Offset(0, -30),
      ),
      TutorialStep(
        title: 'Add New Auction',
        description: 'Create a new auction for your products',
        position: _getWidgetPosition(keys[3]),
        size: _getWidgetSize(keys[3]),
        offset: const Offset(-0, -60),
      ),
    ];
  }

  static Offset _getWidgetPosition(GlobalKey key) {
    try {
      final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
      final Size size = renderBox.size;
      final Offset position = renderBox.localToGlobal(Offset.zero);
      
      return Offset(
        position.dx + (size.width / 2) - 25,
        position.dy + (size.height / 2) - 25,
      );
    } catch (e) {
      return Offset.zero;
    }
  }

  static Size _getWidgetSize(GlobalKey key) {
    try {
      final RenderBox renderBox = key.currentContext?.findRenderObject() as RenderBox;
      return Size(50, 50);
    } catch (e) {
      return Size(50, 50);
    }
  }
} 