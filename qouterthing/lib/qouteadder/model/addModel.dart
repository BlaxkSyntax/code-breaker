class AddModel {
  final String qoute; 
  final String author;
   
  AddModel(this.qoute, this.author); 
  factory AddModel.fromMap(Map<String, dynamic> json) { 
    return AddModel( 
      json['qoute'], 
      json['author'], 
    );
  }
}
