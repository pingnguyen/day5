import 'dart:convert';
import 'package:df05/src/modules/post/repos/data.dart';
import 'package:df05/src/modules/post/repos/post.dart';
import 'package:http/http.dart' as http;

const String api = "api.dofhunt.200lab.io";
const String userToken =
    "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOltdLCJlbWFpbCI6ImZpZ2h0dGVjaC5kZXZAZ21haWwuY29tIiwiZXhwIjoxNjM3OTkwODgyLCJpYXQiOjE2MzUzOTg4ODIsImlzcyI6IiIsImp0aSI6ImMwNDBlMzFlLWM3YzUtNDFlYi1iZGIzLWQ4NjNkM2Y0YjIxNSIsIm5iZiI6MTYzNTM5ODg4Miwic2NwIjpbIm9mZmxpbmUiXSwic3ViIjoiMzUxNyIsInVzZXJfaWQiOiIzNTE3In0.j1GAHXT2e-fPSv5ePH96wMjgoJI5-Cb4gpTTvIaKYuMeAdeA0kuMVip8ueuVcpwmiW-OxeeBkE_sHv8Q-ODT4i_SElFGYJkBT6wfvrltU8S3Q-DPh6E3XSwq0nNoOE7UlB_LcsarlAw00Y4d6ysNeiXx-tZMvm1fq8x9W071USQ";
const String path = "/v1/posts";

class PostService {
  Future<Post> getPost({Function(String message)? onError}) async {
    var client = http.Client();
    try {
      Uri uri = Uri.https(api, path, {'tags': "portrait"});
      Map<String, String> header = {
        'Authorization': "Bearer " + userToken,
        "Content-Type": "application/json"
      };
      var response = await client.get(uri, headers: header);
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      if (decodedResponse['code'] != 200) {
        onError!(decodedResponse['code']);
        return Post();
      }
      Post newPost = Post.fromJson(decodedResponse.cast());
      return newPost;
    } finally {
      client.close();
    }
  }

  Future<List<Data>> getDataList({Function(String message)? onError}) async {
    var client = http.Client();
    try {
      Uri uri = Uri.https(api, path, {'tags': "portrait"});
      Map<String, String> header = {
        'Authorization': "Bearer " + userToken,
        "Content-Type": "application/json"
      };
      var response = await client.get(uri, headers: header);
      var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
      if (decodedResponse['code'] != 200) {
        onError!(decodedResponse['code']);
        return [];
      }
      Post newPost = Post.fromJson(decodedResponse.cast());
      return newPost.data!.toList();
    } finally {
      client.close();
    }
  }
}
