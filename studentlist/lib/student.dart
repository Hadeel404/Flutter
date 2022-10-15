class Student {
//attributes : 
  String _id;
  String _name;
  String _image;
  String _grade;

//constructors :
 Student( this._id,this._name, this._image, this._grade);

//setters and getters :
  String get id => _id;
  set id(String value) {
    _id = value;
  }

  String get name => _name;
  set name(String value) {
    _name = value;
  }

  String get image => _image;
  set image(String value) {
    _image = value;
  }

  String get grade => _grade;
  set grade(String value){
    _grade = value;
  }

//to string :
  @override
  String toString() {
    return '_name: $_name\n_id: $_id\n_image: $_image\n_grade: $_grade';
  }

}

