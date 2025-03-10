class Contact {
  int? id;
  String name;
  String phone;

  Contact({this.id, required this.name, required this.phone});

  // Convert from Map (Database) to Contact object
  factory Contact.fromMap(Map<String, dynamic> json) =>
      Contact(id: json['id'], name: json['name'], phone: json['phone']);

  // Convert Contact object to Map (for Database)
  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'phone': phone};
  }
}
