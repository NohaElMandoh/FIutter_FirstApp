class login {
  int status;
  String msg;
  List<Data> data;

  login({this.status, this.msg, this.data});

  login.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String apiToken;
  List<User> user;
  String departmentName;

  Data({this.apiToken, this.user, this.departmentName});

  Data.fromJson(Map<String, dynamic> json) {
    apiToken = json['api_token'];
    if (json['user'] != null) {
      user = new List<User>();
      json['user'].forEach((v) {
        user.add(new User.fromJson(v));
      });
    }
    departmentName = json['Department_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['api_token'] = this.apiToken;
    if (this.user != null) {
      data['user'] = this.user.map((v) => v.toJson()).toList();
    }
    data['Department_name'] = this.departmentName;
    return data;
  }
}

class User {
  int id;
  String createdAt;
  String updatedAt;
  String persoName;
  String userName;
  String gender;
  String email;
  String departmentId;
  String firbaseId;
  Null pinCode;
  Department department;

  User(
      {this.id,
        this.createdAt,
        this.updatedAt,
        this.persoName,
        this.userName,
        this.gender,
        this.email,
        this.departmentId,
        this.firbaseId,
        this.pinCode,
        this.department});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    persoName = json['perso_name'];
    userName = json['UserName'];
    gender = json['Gender'];
    email = json['Email'];
    departmentId = json['department_id'];
    firbaseId = json['firbase_id'];
    pinCode = json['pin_code'];
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['perso_name'] = this.persoName;
    data['UserName'] = this.userName;
    data['Gender'] = this.gender;
    data['Email'] = this.email;
    data['department_id'] = this.departmentId;
    data['firbase_id'] = this.firbaseId;
    data['pin_code'] = this.pinCode;
    if (this.department != null) {
      data['department'] = this.department.toJson();
    }
    return data;
  }
}

class Department {
  int id;
  String createdAt;
  String updatedAt;
  String name;

  Department({this.id, this.createdAt, this.updatedAt, this.name});

  Department.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['name'] = this.name;
    return data;
  }
}