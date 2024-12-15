import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {


  User({
      this.id,
      this.name,
      this.email,
      this.gender,
      this.status,});

  num? id;
  // @JsonKey(name: 'id')
  String? name;
  String? email;
  String? gender;
  String? status;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserToJson(this);

}