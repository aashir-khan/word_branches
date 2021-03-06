# Word Branches

[Play Store Listing](https://play.google.com/store/apps/details?id=com.humblecarrotstudios.wordbranches)

[Web Demo](https://word-branches.web.app/)

macOS (requires v10.11+) binary available as well in Releases tab

Get access to the largest and most trusted online dictionary (Oxford Dictionary) in the palm of your hand. With information on more than 600,000 words in the English language, get ready to level up your English game, whether you are preparing for an English exam, improving your proficiency of the language, or just trying to figure out what that word you heard someone say means. What does proficiency mean you ask? What better way to find out than to download the app and search it!

Features:

1. Search for information on over 600,000 words.

2. View summarized information on a word categorized based on the contexts that word is used in, and further categorized by the type of speech (noun, verb, adverb, etc).

3. View more detailed information on a particular context + type of speech combination including, but not limited to:

- definitions
- examples
- etymologies
- and more!

4. Go deeper on your quest to increase your knowledge by viewing submeanings to specific meaning of a word. Not sure what we mean? Take a look at the screenshots!

5. Save those word searches you want to have quick access to in the future by favoriting them, allowing you to see all your favorited searches at a glance.

To run the client:

1.
Rename `lib/config/env/env_config.dart.template` to `lib/config/env/env_config.dart` and configure secrets.

2.

Inside `client` directory, run:

```bash
flutter pub get
flutter pub run build_runner --delete-conflicting-outputs
flutter run -t lib/main/main_{production/development/test}.dart # depending on which environment you wish to run it
```

To run the server, inside the `server` directory, run:

```bash
yarn
yarn run start:dev
```