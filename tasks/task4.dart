interface class Serializable {
  toJson(){}
}


class User implements Serializable {
  String name;
  int age;
  String email;

  User(this.name, this.age, this.email);

  @override
  String toJson() {
    return '{"name": "$name", "age": $age, "email": "$email"}';
  }
}

class Product implements Serializable {
  String productName;
  double price;
  int quantity;

  Product(this.productName, this.price, this.quantity);

  @override
  String toJson() {
    return '{"productName": "$productName", "price": $price, "quantity": $quantity"}';
  }
}

void main() {
  User u = User('tasneem', 21, 'tasneemhesham22.@gmail.com');
  Product product = Product('phone', 20000.5, 5);

  
  print(u.toJson());
  print(product.toJson());
}