# lilypond-circular-bowing

You can use the file [circular-bowing.ily](circular-bowing.ily) in this repository to add circular bowing articulations to notes in LilyPond v2.24.0 or later. For example, running:

```sh
lilypond --output=circular-bowing --svg - <<EOS
\version "2.24.0"
\include "circular-bowing.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
  top-margin = 0
  left-margin = 0
  right-margin = 0
  oddFooterMarkup = ##f
}
\pointAndClickOff
{ \clef "bass" c1\circular-bowing }
EOS
```

will output:

<img src="circular-bowing.svg">
