class User { //extends Equatable
  final String userID; 
  final String? email; 
  final String? photoURL; 
  final String? name; 
  final DateTime? dob; 

  const User({
    required this.userID, 
    this.email, 
    this.name, 
    this.photoURL, 
    this.dob
  });

  static const empty = User(userID: '');

  bool get isEmpty => this == User.empty; 

  bool get isNotEmpty => this != User.empty; 


}