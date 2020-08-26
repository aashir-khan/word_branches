import 'dart:convert';

import 'package:dr_words/domain/core/entities/dictionary_word.dart';
import 'package:dr_words/domain/dictionary_word_entries/i_dictionary_word_entries_remote_data_source.dart';
import 'package:dr_words/infrastructure/dictionary_word_entries/dtos/headword_entry_dto.dart';
import 'package:dr_words/injection.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IDictionaryWordEntriesRemoteDataSource, env: [Env.development])
class DictionaryWordEntriesRemoteDataSourceFake implements IDictionaryWordEntriesRemoteDataSource {
  final SharedPreferences sharedPreferences;

  DictionaryWordEntriesRemoteDataSourceFake({@required this.sharedPreferences});

  static const dictionaryWordEntriesDto = 'dictionary_word_entries_dto';

  @override
  Future<KtList<HeadwordEntryDto>> getWordEntries(DictionaryWord word) {
    // final rawStoredData = sharedPreferences.getStringList(dictionaryWordEntriesDto) ?? [];

    // const str =
    //     '{ "id": "pop", "metadata": { "operation": "retrieve", "provider": "Oxford University Press", "schema": "RetrieveEntry" }, "results": [ { "id": "pop", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "late Middle English (in the senses ‘a blow, knock’ and ‘to strike’): imitative" ], "homographNumber": "100", "inflections": [ { "inflectedForm": "pops" }, { "inflectedForm": "popping" }, { "inflectedForm": "popped" } ], "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "definitions": [ "make a light explosive sound" ], "examples": [ { "text": "corks popped and glasses tinkled" } ], "id": "m_en_gbus0799670.009", "notes": [ { "text": "no object", "type": "grammaticalNote" } ], "shortDefinitions": [ "make sudden explosive sound" ], "subsenses": [ { "definitions": [ "cause (something) to burst, making a light explosive sound" ], "examples": [ { "text": "they were popping balloons with darts" } ], "id": "m_en_gbus0799670.015", "notes": [ { "text": "with object", "type": "grammaticalNote" } ], "shortDefinitions": [ "cause something to burst" ] }, { "definitions": [ "(of a person\'s ears) make a small popping sound within the head as pressure is equalized, typically because of a change of altitude." ], "id": "m_en_gbus0799670.016", "shortDefinitions": [ "(of ears) make popping sound" ] }, { "definitions": [ "heat (popcorn or another foodstuff) until it bursts open" ], "domainClasses": [ { "id": "cooking", "text": "Cooking" } ], "examples": [ { "text": "the hot-air popper pops 4 quarts of popcorn in 5 minutes" } ], "id": "m_en_gbus0799670.017", "notes": [ { "text": "with object", "type": "grammaticalNote" } ], "shortDefinitions": [ "heat foodstuff until it bursts open" ] } ], "synonyms": [ { "language": "en", "text": "go bang" }, { "language": "en", "text": "go off with a bang" }, { "language": "en", "text": "go off" }, { "language": "en", "text": "crack" }, { "language": "en", "text": "snap" }, { "language": "en", "text": "burst" }, { "language": "en", "text": "explode" } ], "thesaurusLinks": [ { "entry_id": "pop", "sense_id": "t_en_gb0011289.001" } ] }, { "definitions": [ "go somewhere for a short time, often without notice" ], "examples": [ { "text": "she popped in to see if she could help" }, { "text": "he popped down to my office" } ], "id": "m_en_gbus0799670.020", "notes": [ { "text": "no object, with adverbial of direction", "type": "grammaticalNote" } ], "shortDefinitions": [ "go somewhere for short time" ], "subsenses": [ { "definitions": [ "put or move (something) somewhere quickly" ], "examples": [ { "text": "he popped his head around the door" }, { "text": "she popped a pen into her pocket" } ], "id": "m_en_gbus0799670.021", "notes": [ { "text": "with object and adverbial of direction", "type": "grammaticalNote" } ], "shortDefinitions": [ "put or move quickly" ], "synonyms": [ { "language": "en", "text": "put" }, { "language": "en", "text": "place" }, { "language": "en", "text": "slip" }, { "language": "en", "text": "slide" }, { "language": "en", "text": "push" }, { "language": "en", "text": "stick" }, { "language": "en", "text": "rest" }, { "language": "en", "text": "deposit" }, { "language": "en", "text": "set" }, { "language": "en", "text": "lay" }, { "language": "en", "text": "settle" }, { "language": "en", "text": "locate" }, { "language": "en", "text": "install" }, { "language": "en", "text": "drop" }, { "language": "en", "text": "shove" }, { "language": "en", "text": "hang" }, { "language": "en", "text": "position" }, { "language": "en", "text": "arrange" } ], "thesaurusLinks": [ { "entry_id": "pop", "sense_id": "t_en_gb0011289.003" } ] }, { "definitions": [ "move, appear, or emerge suddenly" ], "examples": [ { "text": "a head popped out of the back of the wagon" }, { "text": "another thought popped into my mind" } ], "id": "m_en_gbus0799670.112", "notes": [ { "text": "no object, with adverbial of direction", "type": "grammaticalNote" } ], "shortDefinitions": [ "appear or emerge suddenly" ] }, { "definitions": [ "release, open, or engage (something) quickly or suddenly" ], "examples": [ { "text": "he pulled a can of beer from the refrigerator and popped its tab" } ], "id": "m_en_gbus0799670.022", "notes": [ { "text": "with object", "type": "grammaticalNote" } ], "regions": [ { "id": "north_american", "text": "North_American" } ], "shortDefinitions": [ "release, open, or engage something quickly or suddenly" ] } ], "synonyms": [ { "language": "en", "text": "go" }, { "language": "en", "text": "drop by" }, { "language": "en", "text": "drop in" }, { "language": "en", "text": "drop into" }, { "language": "en", "text": "drop round" }, { "language": "en", "text": "stop by" }, { "language": "en", "text": "visit" } ], "thesaurusLinks": [ { "entry_id": "pop", "sense_id": "t_en_gb0011289.002" } ] }, { "definitions": [ "(of a person\'s eyes) bulge or appear to bulge when opened wide, especially as an indication of surprise" ], "examples": [ { "text": "the man\'s eyes popped in disbelief" } ], "id": "m_en_gbus0799670.024", "notes": [ { "text": "no object", "type": "grammaticalNote" } ], "shortDefinitions": [ "(of eyes) open wide and bulge" ] }, { "definitions": [ "appear brighter or more striking in juxtaposition with something of a different or complementary color" ], "examples": [ { "text": "she added a slick of red lipstick to make the outfit pop" }, { "text": "gray creates a calm, neutral backdrop that lets other colors pop" } ], "id": "m_en_gbus0799670.026", "notes": [ { "text": "no object", "type": "grammaticalNote" } ], "shortDefinitions": [ "appear brighter in juxtaposition with item of different colour" ] }, { "definitions": [ "take or inject (a drug)" ], "examples": [ { "text": "people who obsessively drink and pop pills" } ], "id": "m_en_gbus0799670.028", "notes": [ { "text": "with object", "type": "grammaticalNote" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "shortDefinitions": [ "take or inject drug" ] }, { "definitions": [ "pawn (something)" ], "examples": [ { "text": "I wouldn\'t ever sell it—I popped it" } ], "id": "m_en_gbus0799670.030", "notes": [ { "text": "with object", "type": "grammaticalNote" } ], "regions": [ { "id": "british", "text": "British" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "shortDefinitions": [ "pawn" ] }, { "definitions": [ "(of a batter) hit a pop fly." ], "domainClasses": [ { "id": "baseball", "text": "Baseball" } ], "domains": [ { "id": "baseball", "text": "Baseball" } ], "id": "m_en_gbus0799670.032", "notes": [ { "text": "no object", "type": "grammaticalNote" } ], "shortDefinitions": [ "(of batter) hit pop fly" ], "subsenses": [ { "definitions": [ "(of a pitcher) cause (a batter) to pop up." ], "id": "m_en_gbus0799670.033", "notes": [ { "text": "with object", "type": "grammaticalNote" } ], "shortDefinitions": [ "cause batter to pop up" ] } ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "verb", "text": "Verb" }, "phrasalVerbs": [ { "id": "pop_for", "text": "pop for" }, { "id": "pop_off", "text": "pop off" }, { "id": "pop_out", "text": "pop out" }, { "id": "pop_up", "text": "pop up" } ], "phrases": [ { "id": "have_a_pop_at", "text": "have a pop at" }, { "id": "make_someone%27s_eyes_pop", "text": "make someone\'s eyes pop" }, { "id": "pop_the_question", "text": "pop the question" }, { "id": "%E2%80%94_a_pop", "text": "— a pop" } ], "text": "pop" }, { "entries": [ { "homographNumber": "101", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "definitions": [ "a light explosive sound" ], "examples": [ { "text": "at first there were just a few pops, perhaps from pistols" } ], "id": "m_en_gbus0799670.036", "semanticClasses": [ { "id": "sound", "text": "Sound" } ], "shortDefinitions": [ "sudden explosive sound" ], "synonyms": [ { "language": "en", "text": "bang" }, { "language": "en", "text": "crack" }, { "language": "en", "text": "snap" }, { "language": "en", "text": "boom" }, { "language": "en", "text": "explosion" }, { "language": "en", "text": "report" } ], "thesaurusLinks": [ { "entry_id": "pop", "sense_id": "t_en_gb0011289.005" } ] }, { "definitions": [ "a carbonated soft drink" ], "examples": [ { "text": "a bottle of pop" }, { "notes": [ { "text": "count noun", "type": "grammaticalNote" } ], "text": "fruit-flavored pops" } ], "id": "m_en_gbus0799670.040", "registers": [ { "id": "informal", "text": "Informal" } ], "semanticClasses": [ { "id": "drink", "text": "Drink" } ], "shortDefinitions": [ "sweet fizzy drink" ], "synonyms": [ { "language": "en", "text": "fizzy drink" }, { "language": "en", "text": "soft drink" }, { "language": "en", "text": "carbonated drink" } ], "thesaurusLinks": [ { "entry_id": "pop", "sense_id": "t_en_gb0011289.006" } ] }, { "definitions": [ "a patch of bright color" ], "domainClasses": [ { "id": "clothing", "text": "Clothing" } ], "examples": [ { "text": "I like wearing a neutral outfit with one pop of yellow" } ], "id": "m_en_gbus0799670.044", "semanticClasses": [ { "id": "colour", "text": "Colour" } ], "shortDefinitions": [ "patch of bright colour" ] }, { "definitions": [ "a ball hit high in the air but not deep, providing an easy catch" ], "domainClasses": [ { "id": "baseball", "text": "Baseball" } ], "domains": [ { "id": "baseball", "text": "Baseball" } ], "examples": [ { "text": "he caught a pop fly for the third out of the seventh inning" } ], "id": "m_en_gbus0799670.046", "semanticClasses": [ { "id": "stroke", "text": "Stroke" } ], "shortDefinitions": [ "ball hit high in air" ], "variantForms": [ { "text": "pop fly" }, { "text": "pop-up" } ] }, { "definitions": [ "an attempt" ], "examples": [ { "text": "he grabs with a paw and hooks about two hundred berries at a pop" } ], "id": "m_en_gbus0799670.054", "semanticClasses": [ { "id": "attempt", "text": "Attempt" } ], "shortDefinitions": [ "attempt" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "noun", "text": "Noun" }, "phrasalVerbs": [ { "id": "pop_for", "text": "pop for" }, { "id": "pop_off", "text": "pop off" }, { "id": "pop_out", "text": "pop out" }, { "id": "pop_up", "text": "pop up" } ], "phrases": [ { "id": "have_a_pop_at", "text": "have a pop at" }, { "id": "make_someone%27s_eyes_pop", "text": "make someone\'s eyes pop" }, { "id": "pop_the_question", "text": "pop the question" }, { "id": "%E2%80%94_a_pop", "text": "— a pop" } ], "text": "pop" }, { "entries": [ { "homographNumber": "102", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "definitions": [ "with a light explosive sound" ], "examples": [ { "text": "the champagne went pop" } ], "id": "m_en_gbus0799670.056", "shortDefinitions": [ "with sudden explosive sound" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "adverb", "text": "Adverb" }, "phrasalVerbs": [ { "id": "pop_for", "text": "pop for" }, { "id": "pop_off", "text": "pop off" }, { "id": "pop_out", "text": "pop out" }, { "id": "pop_up", "text": "pop up" } ], "phrases": [ { "id": "have_a_pop_at", "text": "have a pop at" }, { "id": "make_someone%27s_eyes_pop", "text": "make someone\'s eyes pop" }, { "id": "pop_the_question", "text": "pop the question" }, { "id": "%E2%80%94_a_pop", "text": "— a pop" } ], "text": "pop" } ], "type": "headword", "word": "pop" }, { "id": "pop", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "late 19th century: abbreviation of popular" ], "homographNumber": "200", "notes": [ { "text": "attributive", "type": "grammaticalNote" } ], "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "definitions": [ "relating to commercial popular music" ], "domainClasses": [ { "id": "popular_music", "text": "Popular_Music" } ], "examples": [ { "text": "a pop singer" }, { "text": "a pop song" } ], "id": "m_en_gbus0799680.006", "shortDefinitions": [ "relating to pop music" ] }, { "definitions": [ "(especially of a technical, scientific, or academic subject) made accessible to the general public; popularized" ], "examples": [ { "text": "pop psychology" } ], "id": "m_en_gbus0799680.010", "registers": [ { "id": "derogatory", "text": "Derogatory" } ], "shortDefinitions": [ "made accessible to general public" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "adjective", "text": "Adjective" }, "text": "pop" }, { "entries": [ { "homographNumber": "201", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "definitions": [ "commercial popular music, in particular accessible, tuneful music of a kind popular since the 1950s and sometimes contrasted with rock, soul, or other forms of popular music" ], "domainClasses": [ { "id": "popular_music", "text": "Popular_Music" } ], "examples": [ { "text": "their quasi-psychedelic pop is pleasantly uplifting and danceable" } ], "id": "m_en_gbus0799680.013", "semanticClasses": [ { "id": "music", "text": "Music" } ], "shortDefinitions": [ "commercial popular music" ], "subsenses": [ { "definitions": [ "a pop record or song." ], "domainClasses": [ { "id": "popular_music", "text": "Popular_Music" } ], "id": "m_en_gbus0799680.017", "registers": [ { "id": "dated", "text": "Dated" } ], "semanticClasses": [ { "id": "song", "text": "Song" } ], "shortDefinitions": [ "pop song" ] } ], "variantForms": [ { "text": "pop music" } ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "noun", "text": "Noun" }, "text": "pop" } ], "type": "headword", "word": "pop" }, { "id": "pop", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "mid 19th century: abbreviation of poppa" ], "homographNumber": "300", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "crossReferenceMarkers": [ "another term for father" ], "crossReferences": [ { "id": "father", "text": "father", "type": "another term for" } ], "id": "m_en_gbus0799690.006", "regions": [ { "id": "us", "text": "Us" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "semanticClasses": [ { "id": "father", "text": "Father" } ], "shortDefinitions": [ "father" ] } ], "variantForms": [ { "text": "pops" } ] } ], "language": "en-us", "lexicalCategory": { "id": "noun", "text": "Noun" }, "text": "pop" } ], "type": "headword", "word": "pop" }, { "id": "pop", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "late 19th century: originally (in ice pop) shortened from lollipop; in later use probably shortened from popsicle" ], "homographNumber": "400", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" } ], "senses": [ { "definitions": [ "a piece of flavored ice or ice cream on a stick" ], "domainClasses": [ { "id": "sweet", "text": "Sweet" } ], "examples": [ { "text": "mango-flavored ice pops" }, { "text": "frozen fruit pops" } ], "id": "m_en_gbus0799700.003", "notes": [ { "text": "usually with modifier", "type": "grammaticalNote" } ], "regions": [ { "id": "north_american", "text": "North_American" } ], "semanticClasses": [ { "id": "dessert", "text": "Dessert" } ], "shortDefinitions": [ "flavored ice or ice cream on stick" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "noun", "text": "Noun" }, "text": "pop" } ], "type": "headword", "word": "pop" }, { "id": "POP", "language": "en-us", "lexicalEntries": [ { "entries": [ { "grammaticalFeatures": [ { "id": "abbreviation", "text": "Abbreviation", "type": "Residual" } ], "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "päp" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/pop_1_us_2.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "pɑp" }, { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "ˌpē ˌō ˈpē" }, { "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "ˌpi ˌoʊ ˈpi" } ], "senses": [ { "definitions": [ "point of presence, denoting equipment that acts as access to the internet." ], "domainClasses": [ { "id": "computing", "text": "Computing" } ], "domains": [ { "id": "computing", "text": "Computing" } ], "id": "m_en_gbus0799650.019", "semanticClasses": [ { "id": "computer", "text": "Computer" } ], "shortDefinitions": [ "point of presence, denoting equipment that acts as access to internet" ] }, { "definitions": [ "point of purchase, denoting products or promotions located adjacent to a retail checkout or cashier." ], "domainClasses": [ { "id": "retail", "text": "Retail" } ], "id": "m_en_gbus0799650.023", "shortDefinitions": [ "point of purchase, denoting products or promotions located adjacent to retail checkout or cashier" ] } ], "variantForms": [ { "text": "PoP" } ] } ], "language": "en-us", "lexicalCategory": { "id": "residual", "text": "Residual" }, "text": "POP" } ], "type": "headword", "word": "POP" } ], "word": "pop" }';

    const str =
        '{ "id": "jack", "metadata": { "operation": "retrieve", "provider": "Oxford University Press", "schema": "RetrieveEntry" }, "results": [ { "id": "jack", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "late Middle English: from Jack, pet form of the given name John. The term was used originally to denote an ordinary man (jack (sense 6)), also a youth (mid 16th century), hence the ‘knave’ in cards and ‘male animal’. The word also denoted various devices saving human labor, as though one had a helper (jack (sense 1, jack sense 3, jack sense 9, jack sense 10), and in compounds such as jackhammer and jackknife); the general sense ‘laborer’ arose in the early 18th century and survives in cheapjack, lumberjack, steeplejack, etc. Since the mid 16th century a notion of ‘smallness’ has arisen, hence jack (sense 4, jack sense 5, jack sense 7, jack sense 13)" ], "homographNumber": "100", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "jak" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/jack_us_1.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "dʒæk" } ], "senses": [ { "definitions": [ "a device for lifting heavy objects, especially one for raising the axle of a motor vehicle off the ground so that a wheel can be changed or the underside inspected." ], "domainClasses": [ { "id": "mechanics", "text": "Mechanics" }, { "id": "motoring", "text": "Motoring" } ], "id": "m_en_gbus0526890.006", "semanticClasses": [ { "id": "mechanism", "text": "Mechanism" } ], "shortDefinitions": [ "device for lifting heavy objects" ] }, { "definitions": [ "a playing card bearing a representation of a soldier, page, or knave, normally ranking next below a queen." ], "domainClasses": [ { "id": "cards", "text": "Cards" } ], "id": "m_en_gbus0526890.010", "semanticClasses": [ { "id": "playing_card", "text": "Playing_Card" } ], "shortDefinitions": [ "court card ranking next below queen" ] }, { "definitions": [ "a socket with two or more pairs of terminals designed to receive a jack plug." ], "domainClasses": [ { "id": "electrical", "text": "Electrical" } ], "id": "m_en_gbus0526890.012", "semanticClasses": [ { "id": "socket", "text": "Socket" } ], "shortDefinitions": [ "socket for jack plug" ] }, { "definitions": [ "in lawn bowling, the small ball at which the players aim." ], "domainClasses": [ { "id": "bowls", "text": "Bowls" } ], "id": "m_en_gbus0526890.017", "semanticClasses": [ { "id": "ball", "text": "Ball" } ], "shortDefinitions": [ "ball aimed at in bowls" ] }, { "definitions": [ "a game played by tossing and catching small round pebbles or star-shaped pieces of metal or plastic." ], "id": "m_en_gbus0526890.019", "notes": [ { "text": "jacks", "type": "wordFormNote" } ], "semanticClasses": [ { "id": "game", "text": "Game" } ], "shortDefinitions": [ "game played with small round pebbles or star-shaped pieces of metal or plastic" ], "subsenses": [ { "definitions": [ "a small round pebble or star-shaped piece of metal used in the game of jacks." ], "domainClasses": [ { "id": "games", "text": "Games" } ], "id": "m_en_gbus0526890.021", "semanticClasses": [ { "id": "game_equipment", "text": "Game_Equipment" } ], "shortDefinitions": [ "object used in tossing and catching games" ], "variantForms": [ { "text": "jackstone" } ] } ] }, { "definitions": [ "used as a form of address to a man whose name is not known." ], "id": "m_en_gbus0526890.029", "regions": [ { "id": "us", "text": "Us" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "semanticClasses": [ { "id": "form_of_address", "text": "Form_Of_Address" } ], "shortDefinitions": [ "form of address" ], "variantForms": [ { "text": "Jack" } ] }, { "definitions": [ "a lumberjack." ], "id": "m_en_gbus0526890.032", "regions": [ { "id": "north_american", "text": "North_American" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "semanticClasses": [ { "id": "forester", "text": "Forester" } ], "shortDefinitions": [ "lumberjack" ] }, { "definitions": [ "a steeplejack." ], "id": "m_en_gbus0526890.034", "registers": [ { "id": "archaic", "text": "Archaic" } ], "semanticClasses": [ { "id": "construction_worker", "text": "Construction_Worker" } ], "shortDefinitions": [ "steeplejack" ] }, { "definitions": [ "the figure of a man striking the bell on a clock." ], "domainClasses": [ { "id": "clockmaking", "text": "Clockmaking" } ], "id": "m_en_gbus0526890.035", "semanticClasses": [ { "id": "representation", "text": "Representation" } ], "shortDefinitions": [ "figure of man striking bell on clock" ] }, { "definitions": [ "a small version of a national flag flown at the bow of a vessel in harbor to indicate its nationality." ], "domainClasses": [ { "id": "nautical", "text": "Nautical" } ], "id": "m_en_gbus0526890.037", "semanticClasses": [ { "id": "flag", "text": "Flag" } ], "shortDefinitions": [ "small version of national flag" ] }, { "definitions": [ "money." ], "id": "m_en_gbus0526890.039", "regions": [ { "id": "north_american", "text": "North_American" } ], "registers": [ { "id": "informal", "text": "Informal" }, { "id": "dated", "text": "Dated" } ], "semanticClasses": [ { "id": "money", "text": "Money" } ], "shortDefinitions": [ "money" ] }, { "definitions": [ "a device for turning a spit." ], "domainClasses": [ { "id": "cooking", "text": "Cooking" } ], "id": "m_en_gbus0526890.041", "semanticClasses": [ { "id": "mechanism", "text": "Mechanism" } ], "shortDefinitions": [ "device for turning spit" ] }, { "definitions": [ "a part of the mechanism in a spinet or harpsichord that connects a key to its corresponding string and causes the string to be plucked when the key is pressed down." ], "domainClasses": [ { "id": "music", "text": "Music" } ], "id": "m_en_gbus0526890.043", "semanticClasses": [ { "id": "instrument_part", "text": "Instrument_Part" } ], "shortDefinitions": [ "part of mechanism in spinet or harpsichord" ] }, { "crossReferenceMarkers": [ "Also called pompano, scad" ], "crossReferences": [ { "id": "pompano", "text": "pompano", "type": "see also" }, { "id": "scad", "text": "scad", "type": "see also" } ], "definitions": [ "a marine fish that is typically laterally compressed with a row of large spiky scales along each side. Jacks are important in many places as food or game fish." ], "domainClasses": [ { "id": "fish", "text": "Fish" } ], "id": "m_en_gbus0526890.045", "notes": [ { "text": "Family Carangidae (the jack family): many genera and numerous species. The jack family also includes the horse mackerel, pilotfish, kingfishes, and trevallies", "type": "technicalNote" } ], "semanticClasses": [ { "id": "percoid", "text": "Percoid" } ], "shortDefinitions": [ "type of marine fish" ] }, { "definitions": [ "the male of some animals, especially a merlin or an ass." ], "domainClasses": [ { "id": "zoology", "text": "Zoology" } ], "id": "m_en_gbus0526890.049", "semanticClasses": [ { "id": "animal", "text": "Animal" } ], "shortDefinitions": [ "male of various animals" ] }, { "definitions": [ "used in names of animals that are smaller than similar kinds, e.g., jacksnipe." ], "domainClasses": [ { "id": "zoology", "text": "Zoology" } ], "id": "m_en_gbus0526890.051", "semanticClasses": [ { "id": "animal", "text": "Animal" } ], "shortDefinitions": [ "animal smaller than similar kinds" ] }, { "crossReferenceMarkers": [ "short for jack shit" ], "crossReferences": [ { "id": "jack_shit", "text": "jack shit", "type": "abbreviation of" } ], "id": "m_en_gbus0526890.055", "regions": [ { "id": "us", "text": "Us" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "shortDefinitions": [ "anything at all" ] }, { "crossReferenceMarkers": [ "short for jackrabbit" ], "crossReferences": [ { "id": "jackrabbit", "text": "jackrabbit", "type": "abbreviation of" } ], "id": "m_en_gbus0526890.057", "semanticClasses": [ { "id": "ordinary_person", "text": "Ordinary_Person" } ], "shortDefinitions": [ "ordinary man" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "noun", "text": "Noun" }, "phrasalVerbs": [ { "id": "jack_around", "text": "jack around" }, { "id": "jack_in", "text": "jack in" }, { "id": "jack_into", "text": "jack into" }, { "id": "jack_off", "text": "jack off" }, { "id": "jack_up", "text": "jack up" } ], "phrases": [ { "id": "before_one_can_say_Jack_Robinson", "text": "before one can say Jack Robinson" }, { "id": "every_man_jack", "text": "every man jack" }, { "id": "jack_of_all_trades", "text": "jack of all trades" }, { "id": "jack_of_all_trades_and_master_of_none", "text": "jack of all trades and master of none" } ], "text": "jack" } ], "type": "headword", "word": "jack" }, { "id": "jack", "language": "en-us", "lexicalEntries": [ { "entries": [ { "homographNumber": "200", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "jak" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/jack_us_1.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "dʒæk" } ], "senses": [ { "crossReferenceMarkers": [ "another term for blackjack (sense 5)" ], "crossReferences": [ { "id": "blackjack", "text": "blackjack", "type": "another term for" } ], "id": "m_en_gbus0526900.006", "registers": [ { "id": "historical", "text": "Historical" } ] }, { "definitions": [ "a sleeveless padded tunic worn by foot soldiers." ], "domainClasses": [ { "id": "clothing", "text": "Clothing" } ], "etymologies": [ "late Middle English: from Old French jaque; origin uncertain, perhaps based on Arabic" ], "id": "m_en_gbus0526900.010", "registers": [ { "id": "historical", "text": "Historical" } ], "semanticClasses": [ { "id": "shirt", "text": "Shirt" } ], "shortDefinitions": [ "sleeveless padded tunic worn by foot soldiers" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "noun", "text": "Noun" }, "text": "jack" } ], "type": "headword", "word": "jack" }, { "id": "jack", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "1990s: from hijack" ], "grammaticalFeatures": [ { "id": "transitive", "text": "Transitive", "type": "Subcategorization" } ], "homographNumber": "300", "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "jak" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/jack_us_1.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "dʒæk" } ], "senses": [ { "definitions": [ "take (something) illicitly; steal" ], "domainClasses": [ { "id": "crime", "text": "Crime" } ], "examples": [ { "text": "his MO in the studio remains the same—jack other people\'s tracks and present them in a new context" } ], "id": "m_en_gbus0526910.005", "regions": [ { "id": "north_american", "text": "North_American" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "shortDefinitions": [ "take something illicitly" ], "subsenses": [ { "definitions": [ "rob (someone)" ], "domainClasses": [ { "id": "crime", "text": "Crime" } ], "examples": [ { "text": "they jacked him for his car" } ], "id": "m_en_gbus0526910.011", "shortDefinitions": [ "rob" ] } ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "verb", "text": "Verb" }, "text": "jack" } ], "type": "headword", "word": "jack" }, { "id": "jack", "language": "en-us", "lexicalEntries": [ { "entries": [ { "etymologies": [ "late 19th century: from jack up ‘give up’ (see jack up)" ], "homographNumber": "400", "notes": [ { "text": "predicative", "type": "grammaticalNote" } ], "pronunciations": [ { "dialects": [ "American English" ], "phoneticNotation": "respell", "phoneticSpelling": "jak" }, { "audioFile": "https://audio.oxforddictionaries.com/en/mp3/jack_us_1.mp3", "dialects": [ "American English" ], "phoneticNotation": "IPA", "phoneticSpelling": "dʒæk" } ], "senses": [ { "constructions": [ { "text": "jack of" } ], "definitions": [ "tired of or bored with someone or something" ], "examples": [ { "text": "people are getting jack of strikes" } ], "id": "m_en_gbus0526920.003", "regions": [ { "id": "australian", "text": "Australian" } ], "registers": [ { "id": "informal", "text": "Informal" } ], "shortDefinitions": [ "tired of or bored with person or thing" ] } ] } ], "language": "en-us", "lexicalCategory": { "id": "adjective", "text": "Adjective" }, "text": "jack" } ], "type": "headword", "word": "jack" } ], "word": "jack" }';

    final map = json.decode(str) as Map<String, dynamic>;
    final listRaw = map['results'] as List<dynamic>;
    final list = listRaw.map((foo) => HeadwordEntryDto.fromJson(foo as Map<String, dynamic>)).toList();

    // return Future.delayed(const Duration(milliseconds: 1), () => entriesForWord.toImmutableList());
    return Future.delayed(const Duration(milliseconds: 1), () => list.toImmutableList());
  }
}
