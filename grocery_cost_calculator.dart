// Mobile Development

// Grocery Cost Calculator

// Description

// Calculate the total cost of grocery items using a list, map, variables, and constants


// # Requirement 1

// Title: Calculate the total cost of a grocery items 
// Description: Let each grocery item as a map with key name and price
// Add taxes constant doesn't change throughout the program (it'll be 10%)
// Use the loop to calculate the total price, then add it to the tax rate.
 

// Requirement 2

// Title: calculate the total price and the price after
// adding taxes and printing it

void main() {
  // tax rate 
  const TAX_RATE = 0.10;
  
  // Create a list of grocery items
  List<Map<String, dynamic>> groceryItems = [
    {'name': 'Milk', 'price': 40, 'quantity': 1},
    {'name': 'Bread', 'price': 2.5, 'quantity': 5},
    {'name': 'Eggs', 'price': 5, 'quantity': 4},
    {'name': 'Cheese', 'price': 160, 'quantity': 0.5},
    {'name': 'Fruits', 'price': 25, 'quantity': 1.5},
  ];

  // total price before tax
  double totalBeforeTax = 0;
  
    // Print results
  print('Grocery List:');
  print('-------------');
  
  for (var item in groceryItems) {
    var itemTotal = item['price'] * item['quantity'];
    totalBeforeTax += itemTotal;
    print('${item['name']}: ${item['price']} EGP * quantity : ${item['quantity']} = ${itemTotal}');
  }
  print('-------------');

  // tax amount
  double taxAmount = totalBeforeTax * TAX_RATE;
  
  // final total including tax
  double totalWithTax = totalBeforeTax + taxAmount;


  print('Subtotal: ${totalBeforeTax.toStringAsFixed(2)} EGP');
  print('Tax (10%): ${taxAmount.toStringAsFixed(2)} EGP');
  print('Total: ${totalWithTax.toStringAsFixed(2)} EGP');
}
