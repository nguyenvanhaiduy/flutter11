import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

void main() async {
  final List<ForCurrency> listCurrency = await fetchDataFromApi();
  listCurrency.forEach((element) {
    log(element.toString());
  });
}

class ForCurrency {
  String code;
  String symbol;
  String rate;
  String description;
  double rateFloat;

  ForCurrency({
    required this.code,
    required this.symbol,
    required this.rate,
    required this.description,
    required this.rateFloat,
  });

  // Factory constructor to handle decoding from JSON (optional)
  factory ForCurrency.fromJson(Map<String, dynamic> json) {
    return ForCurrency(
      code: json['code'] ?? 'unknown',
      symbol: json['symbol'] ?? 'unknown',
      rate: json['rate'] ?? 'unknown',
      description: json['description'] ?? 'unknown',
      rateFloat: json['rate_float'] ?? 0,
    );
  }
  @override
  String toString() {
    return 'code: $code \nsymbol: $symbol \nrate: $rate\ndescription: $description\nrate_float: $rateFloat';
  }
}

Future<List<ForCurrency>> fetchDataFromApi() async {
  const url = 'https://api.coindesk.com/v1/bpi/currentprice.json';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
  final bpiData = json['bpi'] as Map<String, dynamic>;
  final List<ForCurrency> listCurrency = [];
  bpiData.forEach((key, value) {
    listCurrency.add(ForCurrency.fromJson(value));
  });
  return listCurrency;
}
/*
 * {
 "bpi": {
    "USD": {
      "code": "USD",
      "symbol": "&#36;",
      "rate": "57,663.769",
      "description": "United States Dollar",
      "rate_float": 57663.7691
    },
    "GBP": {
      "code": "GBP",
      "symbol": "&pound;",
      "rate": "43,667.331",
      "description": "British Pound Sterling",
      "rate_float": 43667.3307
    },
    "EUR": {
      "code": "EUR",
      "symbol": "&euro;",
      "rate": "51,811.819",
      "description": "Euro",
      "rate_float": 51811.8192
    }
  }
}
*/