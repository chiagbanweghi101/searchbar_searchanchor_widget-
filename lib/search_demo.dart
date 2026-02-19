import 'package:flutter/material.dart';

/// Simple [SearchBar] + [SearchAnchor] demo.
/// Tap the search bar to open the overlay; type to filter suggestions.
class SearchDemo extends StatelessWidget {
  const SearchDemo({super.key});

  // Data source: list of items the user can search.
  static const _items = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry', 'Fig', 'Grape', 'Honeydew', 'Indian Fig', 'Jackfruit', 'Kiwi', 'Lemon', 'Mango', 'Nectarine', 'Orange', 'Papaya', 'Quince', 'Raspberry', 'Strawberry', 'Tangerine', 'Ugli Fruit', 'Vanilla', 'Watermelon', 'Xigua', 'Yellow Passion Fruit', 'Zucchini'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchBar & SearchAnchor'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Put the search bar below the title.
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            child: SearchAnchor(
              // Builds the visible search bar (what the user taps).
              builder: (context, controller) {
                return SearchBar(
                  controller: controller,       // Links bar to overlay; shared text state.
                  hintText: 'Search...',        // Placeholder when empty.
                  leading: const Icon(Icons.search),  // Icon on the left.
                  onTap: () => controller.openView(),  // Opens the suggestion overlay.
                );
              },
              // Builds the suggestion list; runs every time the user types.
              suggestionsBuilder: (context, controller) {
                final query = controller.text.toLowerCase();
                final filtered = query.isEmpty
                    ? _items
                    : _items.where((s) => s.toLowerCase().contains(query)).toList();
                return filtered
                    .map((item) => ListTile(
                          title: Text(item),
                          onTap: () => controller.closeView(item),  // Close overlay, pass selection.
                        ))
                    .toList();
              },
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text('Tap the search bar above to try it.'),
      ),
    );
  }
}
