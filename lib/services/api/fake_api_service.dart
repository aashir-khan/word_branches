import 'package:dr_words/datamodels/query_related/query_search_results.dart';
import 'package:dr_words/services/api/api_service.dart';

class FakeApiService extends ApiService {
  @override
  Future<QuerySearchResults> getQueryResults(String query,
      {Map<String, dynamic> options = const {}}) async {
    var response = {
      "metadata": {
        "limit": "5000",
        "offset": "0",
        "operation": "search",
        "provider": "Oxford University Press",
        "schema": "WordList",
        "sourceLanguage": "en-gb",
        "total": "21"
      },
      "results": [
        {
          "id": "swim",
          "label": "swim",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swim"
        },
        {
          "id": "swim_against_the_tide",
          "label": "swim against the tide",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swim against the tide"
        },
        {
          "id": "swim_bladder",
          "label": "swim bladder",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swim bladder"
        },
        {
          "id": "swim_with_the_tide",
          "label": "swim with the tide",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swim with the tide"
        },
        {
          "id": "swimfeeder",
          "label": "swimfeeder",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimfeeder"
        },
        {
          "id": "swimmable",
          "label": "swimmable",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimmable"
        },
        {
          "id": "swimmer",
          "label": "swimmer",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimmer"
        },
        {
          "id": "swimmer%27s_ear",
          "label": "swimmer's ear",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimmer's ear"
        },
        {
          "id": "swimmeret",
          "label": "swimmeret",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimmeret"
        },
        {
          "id": "swimmers",
          "label": "swimmers",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimmers"
        },
        {
          "id": "swimming",
          "label": "swimming",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming"
        },
        {
          "id": "swimming_bath",
          "label": "swimming bath",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming bath"
        },
        {
          "id": "swimming_costume",
          "label": "swimming costume",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming costume"
        },
        {
          "id": "swimming_crab",
          "label": "swimming crab",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming crab"
        },
        {
          "id": "swimming_hole",
          "label": "swimming hole",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming hole"
        },
        {
          "id": "swimming_pool",
          "label": "swimming pool",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming pool"
        },
        {
          "id": "swimming_trunks",
          "label": "swimming trunks",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimming trunks"
        },
        {
          "id": "swimmingly",
          "label": "swimmingly",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimmingly"
        },
        {
          "id": "swimsuit",
          "label": "swimsuit",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimsuit"
        },
        {
          "id": "swimsuited",
          "label": "swimsuited",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimsuited"
        },
        {
          "id": "swimwear",
          "label": "swimwear",
          "matchString": "swim",
          "matchType": "headword",
          "region": "gb",
          "score": 1,
          "word": "swimwear"
        }
      ]
    };

    QuerySearchResults querySearchResults =
        QuerySearchResults.fromJson(response);

    querySearchResults.results = querySearchResults.results
        .where((querySearchResult) => querySearchResult.label.startsWith(query))
        .toList();

    return Future.delayed(Duration(seconds: 1), () => querySearchResults);
  }
}
