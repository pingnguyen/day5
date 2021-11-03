import 'package:http/http.dart' as http;

const baseUrl = 'api.dofhunt.200lab.io';

const Map<String, String> ezHeader = {
  "Authorization":
      "Basic eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOltdLCJlbWFpbCI6ImZpZ2h0dGVjaC5kZXZAZ21haWwuY29tIiwiZXhwIjoxNjM3OTkwODgyLCJpYXQiOjE2MzUzOTg4ODIsImlzcyI6IiIsImp0aSI6ImMwNDBlMzFlLWM3YzUtNDFlYi1iZGIzLWQ4NjNkM2Y0YjIxNSIsIm5iZiI6MTYzNTM5ODg4Miwic2NwIjpbIm9mZmxpbmUiXSwic3ViIjoiMzUxNyIsInVzZXJfaWQiOiIzNTE3In0.j1GAHXT2e-fPSv5ePH96wMjgoJI5-Cb4gpTTvIaKYuMeAdeA0kuMVip8ueuVcpwmiW-OxeeBkE_sHv8Q-ODT4i_SElFGYJkBT6wfvrltU8S3Q-DPh6E3XSwq0nNoOE7UlB_LcsarlAw00Y4d6ysNeiXx-tZMvm1fq8x9W071USQ",
  "Accept": "application/json",
  "content-type": "application/json"
};

Future<http.Response> ezPost(
  String url,
) async {
  http.Response response;
  try {
    response = await http.post(Uri.parse(baseUrl + url), headers: ezHeader);
  } catch (e) {
    throw Exception(e);
  }

  if (response.statusCode == 200) {
    return response;
  } else {
    throw Exception(response.statusCode);
  }
}
