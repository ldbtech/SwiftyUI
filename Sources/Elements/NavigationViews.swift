import SwiftUI

/// A customizable bottom or top navigation bar for SwiftUI.
public struct NavigationViews : View{
    /// An array of navigation items to be displayed in the navigation bar.
    public var items: [NavigationItem]
    
    /// A binding to the index of the selected navigation item.
    public var selectedItem: Binding<Int>
    
    /// The spacing between navigation items.
    public var spacing: CGFloat
    
    /// The padding around each navigation item.
    public var itemPadding: EdgeInsets
    
    /// Initializes a new NavigationViews instance.
    ///
    /// - Parameters:
    ///   - items: An array of `NavigationItem` objects representing the navigation items.
    ///   - selectedItem: A binding to the index of the selected navigation item.
    ///   - spacing: The spacing between navigation items. Default is 8.
    ///   - itemPadding: The padding around each navigation item. Default is 8 on all sides.
    public init(items: [NavigationItem], selectedItem: Binding<Int>, spacing: CGFloat = 8, itemPadding: EdgeInsets = .init(top: 8, leading: 16, bottom: 8, trailing: 16)) {
        self.items = items
        self.selectedItem = selectedItem
        self.spacing = spacing
        self.itemPadding = itemPadding
    }
    
    /// The body of the navigation bar.
    public var body: some View{
        VStack{
            Spacer()
            HStack(spacing: spacing){
                ForEach(0..<items.count){ index in
                    Button(action: {
                        selectedItem.wrappedValue = index
                    }){
                        NavigationItemView(item: items[index], isSelected: selectedItem.wrappedValue == index)
                    }
                }
            }
            .padding(itemPadding)
        }
    }
}

/// A view representing a single navigation item in the navigation bar.
public struct NavigationItemView: View {
    /// The navigation item to be displayed.
    public var item: NavigationItem
    
    /// A Boolean value indicating whether the item is selected.
    public var isSelected: Bool
    
    /// The body of the navigation item view.
    public var body: some View {
        VStack(spacing: 4) {
            Image(systemName: item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
                .foregroundColor(isSelected ? item.selectedColor : item.color)
            Text(item.title)
                .font(.caption)
                .foregroundColor(isSelected ? item.selectedColor : item.color)
        }
    }
}

/// A model representing a single navigation item.
public struct NavigationItem {
    /// The name of the system image associated with the navigation item.
    public var imageName: String
    
    /// The title of the navigation item.
    public var title: String
    
    /// The color of the navigation item when not selected.
    public var color: Color
    
    /// The color of the navigation item when selected.
    public var selectedColor: Color

    /// Initializes a new NavigationItem instance.
    ///
    /// - Parameters:
    ///   - imageName: The name of the system image associated with the navigation item.
    ///   - title: The title of the navigation item.
    ///   - color: The color of the navigation item when not selected.
    ///   - selectedColor: The color of the navigation item when selected.
    public init(imageName: String, title: String, color: Color, selectedColor: Color) {
        self.imageName = imageName
        self.title = title
        self.color = color
        self.selectedColor = selectedColor
    }
}
