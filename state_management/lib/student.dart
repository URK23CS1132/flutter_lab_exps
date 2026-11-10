
class Employee {
  final int id;
  final String name;
  final String department;

  Employee({
    required this.id,
    required this.name,
    required this.department,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'department': department,
    };
  }

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      name: json['name'],
      department: json['department'],
    );
  }
}
