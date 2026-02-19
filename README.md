# SearchBar & SearchAnchor — Widget Presentation
   DESCRIPTION:  A little functional app which demostrates how the "searchbar" and SearchAnchor widget works by allow user to tap, search and select from a list  of fruit and other names.


   
<img width="654" height="908" alt="image" src="https://github.com/user-attachments/assets/bf873e0a-a861-4877-96fc-1909c7a05cbe" />





<img width="699" height="908" alt="image" src="https://github.com/user-attachments/assets/89f63d5e-998b-4c87-9af1-bfea7e4aef59" />

---
## How to run

1. Clone the repo and open the project folder.  https://github.com/chiagbanweghi101/widget_presentation.git
2. Ensure Flutter is installed 
3. From the project root run:
   ```bash
   flutter pub get
   flutter run
   ```
4. when it opens on your home scree you need to tap on the "searchbar" & SearchAnchor then tap on searchbar to filter  fruits.

## Three widget attributes demonstrated

### 1. hintText (SearchBar)

- what it is: The placeholder text shown when the search field is empty.
- Default in this demo:hintText: 'Type a fruit name...' (or any string) in the SearchBar constructor.
- Visual effect: the grey text can bee seen inside the bar which indicates what to search.
- Why a developer would use it: To tell users what to search for (e.g. "search for types of fruit").

### 2. leading (SearchBar)

- What it is: The widget been displayed at the start (left) of the search bar.
- Default in this demo:Icon(Icons.search)` (magnifying glass).
- How to change: it  Replaces with another icon, e.g. Icon(Icons.filter_list), or set to null to hide it.
- visual effect: The left icon changes or disappears.
- Why a developer would use it: it is used to show different actions


### 3. controller (SearchBar) — used with SearchAnchor

- What it is: the searchcontroler  is what links the searchbar to the searchanchor, which here in the display of the list in the search bar interface

- Default / in this demo: The controller passed from SearchAnchor’s 'builder' callback.
- How to change: it uses a differnt custom 'SearchController' iif th bar will be controlled from esle where 
- Visual/behavioral effect:Typing  the text in the searchbar can updates the overlay suggestions; closing the overlay can update the bar’s text.
- Why a developer would use it: to maintain the bar and the suggestion list  in sync and to control and controlls the activity of the overlay 

presented on 19th of feb.,2026

