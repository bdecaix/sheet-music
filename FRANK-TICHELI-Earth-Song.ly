\version "2.24.4"

\language "italiano"

\header {
  title = "Earth Song"
  subtitle = "SATB Chorus, a cappella"
  composer = "FRANK TICHELI"
  tagline = ##f
}

\paper {
  system-system-spacing.basic-distance = #4
  top-margin = 3
  line-width = 200

  score-system-spacing =
  #'((padding . 1)
     (basic-distance . 100)
     (minimum-distance . 6)
     (stretchability . 12))

}


\layout {
  indent = 0\cm
  #(layout-set-staff-size 18)
  %\override Score.NonMusicalPaperColumn.padding = #0.5
  %  #(set-global-staff-size 10)
  \context {
    \StaffGroup
    \override StaffGrouper.staff-staff-spacing.basic-distance = 8
  }
  \context {
    \Voice
    \override TextScript.padding = #1
    \override Glissando.thickness = #3
  }
}

global = {
  \numericTimeSignature \time 4/4
  \key fa \major
  \tempo 4=50
}

sopranonotes = \relative do' {
  sol'4^\p^\< (sib2.~\!\> sib\!) r4 sol4^\< (sib2.~\!\> sib\!) r4  fa^\< (la2.~\!\> la\!) r4 fa (la2^\> sol4~ sol2.\!) \breathe do,4--^\mp re^\< (fa2) sol8 sib la4^\mf (do2)
  do,4^\mp re^\< (fa sol) sol8 (sib)\! la4^\> (fa2)\! fa8 (sol) la4^\< (do) do (fa) fa^\mf (do) do4.^\> sib8\! la2. sol8 (sib) la2.
  do,4 re^\< (fa2) sol8 (sib) la4^\mf do2 do,4^\mp re^\< (fa sol) sol8 (sib) la2.^\mf\> fa8\! (sol) la4^\< (do) do (fa) fa^\mf (do) do2~ do2.^\> sib4 la2.^\mp sol8 (sib) la2.
  fa4^\p re'^\markup \italic {(dolce)} fa2 fa,4 mi' do2 fa,4 re' fa mi do~ do2. \breathe fa,4 re' fa2 fa,4 mi' do2 fa,4 re' fa <mi~ do~>2 <mi do>2. \breathe
  do,4--^\mf^\< re fa sol (do,) re fa8 (la) sol4 la8^\ff sib do4 fa,2 la8^\markup \italic {\dynamic p (echo)} sib do4 fa,2
  fa8^\mp (sol) la4^\< fa8 sol la4 fa8 (la) do2.^\f^\> fa,4 fa2.^\mp fa8 (mi) re4^\< (fa\!\> mi2\!) do4^\<^\markup \italic {rit. to end} (mi\!\> re2\!) do4^\< (mi\!\> re2\!) mi1^\pp \breathe mi\fermata \fine

}

sopranowords = \lyricmode {
  Sing, __ Be, __ Live, __ See... __
  This dark storm -- y hour, The wind, it stirs. the scorched earth cries out in vain, in vain:
  O war and pow -- er, you blind __ and blur. The torn heart cries out __ in pain, in pain. But mu -- sic and sing -- ing have been my re -- fuge, __
  And mu -- sic and sing -- ing shall be my light. __  A light of song shin -- ing strong: Al -- le -- lu -- ia! Al -- le -- lu -- ia.
  Through dark -- ness and pain and strife, I'll sing, I'll Be, __ Live, __ See... __ Peace Peace

}

altonotes = \relative do' {
  \after 2 ^\> \after 2. \! sol'2.^\p^\< (la4~ la2.) r4 \after 2 ^\> \after 2. \! sol2.^\< (la4~ la2.) r4 \after 2 ^\> \after 2. \! fa2.^\< (sol4~ sol2.) r4 \after 4 ^\> fa2. (mi4~\! mi2.) \breathe
  do4--^\mp re^\< (fa mi2\!^\>) re\! (do4) do re^\< (fa2\!^\>) mi4\! re2 (do4) sib la2^\< sib do^\mf re4.^\> re8\! re4^\< (fa mi2\!^\>) re4^\< (fa\! mi2\!^\>) re4^\< (fa mi2\!^\>) re2\! do4 do re^\< (fa2\!^\>) mi4 re\! (fa do)
  sib la2^\< sib do^\mf re~ re^\> r2\! re4^\mp^\< (fa mi2\!^\>) re4\!^\< (fa mi2\!^\>) fa4^\markup \italic {\dynamic p (dolce)}\! fa2 fa4 fa fa2 fa4 fa fa fa fa~ fa2. \breathe fa4 fa2 fa fa fa fa4 fa fa2~ fa2. \breathe
  do4--^\mf^\< re fa fa (mi) re fa fa mi8^\ff mi re2 do4 do8^\markup \italic {\dynamic p (echo)} do sib2 la4 la8^\mp (do) fa4^\< fa8 mi re4 re8 (do) sib4^\f (do re2^\>) re4^\p^\< (fa mi2\!^\>) re2.\! do8 (sib) la2.^\> (sol4) la2^\< (si^\>) si1^\pp \breathe si\fermata \fine
}


altowords = \lyricmode {
  Sing, __ Be, __ Live, __ See... __
  This dark __ hour, The wind, it stirs. The scorched earth cries out in vain, __ vain: __ war __
  pow -- er, you blind and blur. The torn heart cries out __ pain, __ pain. __ mu -- sic and sing -- ing have been my re -- fuge, __
  And mu -- sic sing -- ing be my light. __ A light of song shin -- ing strong: Al -- le -- lu -- ia! Al -- le -- lu -- ia.
  Through dark -- ness and pain and strife, sing, __ Be, __ I'll Live, __ See... __ Peace. Peace.}

  tenornotes = \relative do'{
    \clef "G_8"
    sib4^\p^\< (re2\!\> do4~\! do2.) r4 sib4^\< (re2\!\> do4~\! do2.) r4 la^\< (do2\!\> sib4~\! sib2.) r4 la4^ (do2.~^\> do2.)\! \breathe
    do4--^\mp fa,^\< (la sol2\!^\>) fa~\! fa fa4^\< (la sol2\!^\>) fa2.\! fa8 (sol) la4^\< (do) do (fa) fa^\mf (do) do4.^\> do8\! fa,4^\< (la sol2\!^\>) fa4^\< (la sol2\!^\>) fa4^\< (la sol2\!^\>) fa2\! fa fa4^\< (la sol2\!^\>) fa2.\!
    fa8 (sol) la4^\< (do) do (fa) fa^\mf (do) do2~ do^\> r\! fa,4^\mp^\< (la sol2\!^\>) fa4\!^\< (la sol2\!^\>) sib4^\markup \italic {\dynamic p (dolce)}\! re2 fa4 do mi2 fa4 sib, re do mi (mi2.) \breathe
    fa4 sib, re2 fa4 do mi2 fa4 sib, re mi2 (mi2.) \breathe do4--^\mf^\< fa, la sol2 fa4 la sol la8^\ff sib do4 fa,2 la8^\markup \italic {\dynamic p (echo)} sib do4 fa,2
    fa8^\mp (sol) la4^\< la8 sol fa4 fa8 (sol) do2.^\f^\> fa,4\! fa^\p^\< (la sol2\!^\>) fa4^\< (la sol2\!^\>) mi4^\< (sol fa2\!^\>)
    <<
      {
        \voiceOne
        mi4^\< (sol~ sol2\>) sold1^\pp\! \breathe sold\fermata
      }
      \new Voice {
        \voiceTwo
        mi4 (sol~ sol fa) mi1 mi
      }
    >>

    \fine
  }
  tenorwords = \lyricmode {
    Sing, __ Be, __ Live, __ See... __
    This dark __ hour, __ wind, __ stirs. __ The scorched earth cries out in vain, __ vain: __ war __
    pow -- er, blind __ blur. The torn heart cries out pain, __ pain. __ mu -- sic and sing -- ing have been my re -- fuge,
    And mu -- sic and sing -- ing shall be my light. __ A light of song shin -- ing strong: Al -- le -- lu -- ia! Al -- le -- lu -- ia.
    Through dark -- ness and pain and strife, I'll sing, __ Be, __ Live, __ See... __ Peace. Peace.}
    bassnotes = {
      \clef bass
      mib4^\p^\< (sol2\!\> fa4~\! fa2.) r4 mib4^\< (sol2\!\> fa4~\! fa2.) r4 re4^\< (fa2\!\> mib4~\! mib2.) r4 re4 (fa2^\> <sol~ do~>4\! <sol do>2.) \breathe r4
      sib,^\mp^\< (re do2\!^\>) sib,\! (la,) sib,4^\< (re do2\!^\>) sib,\! (la,4) sol, <do fa,>2^\< <re sol,> <mi la,>^\mf <fa sib,>4.^\> fa8\!
      sib,4^\< (re do2\!^\>) sib,4^\< (re do2\!^\>) sib,4^\< (re do2\!^\>) sib,\! la, sib,4^\< (re do2\!^\>) sib,\! (la,4) sol, <do fa,>2^\< <re sol,> <mi la,>\mf <fa sib,>~ <fa sib,>^\> r\!
      sib,4^\mp^\< (re do2\!^\>) sib,4\!^\< (re do2\!^\>) r1\! r1 r1 r1
      sib2^\markup \italic {\dynamic p (dolce)} fa do' fa sib4 re' do'2~ do'2. \breathe do4--^\mf^\< sib, re do2 sib,4 re do do8^\ff do sib,2 la,4 la,8^\markup \italic {\dynamic p (echo)} la, <re sol,>2 <do fa>4 fa8^\mp (mi) re4^\< re8 do sib,4 <fa sib,>8 (<mi la,>)
      <re sol,>4^\f (<mi la,> <fa sib,>2)^\> sib,4^\p^\< (re do2\!^\>) sib,4^\< (re do2\!^\>) la,4^\< (do sib,2\!^\>) la,4^\< (do <re sol,>2^\>) <si, mi,>1^\pp \breathe <si, mi,>\fermata
      \fine

    }
    basswords = \lyricmode {
      Sing, __ Be, __ Live, __ See... __
      dark __ hour, __ wind, __ stirs. The scorched earth cries out in vain, __ vain: __ war __
      pow -- er, blind __ blur. The torn heart cries out __ pain, __ pain. __
      mu -- sic sing -- ing be my light. __ A light of song shin -- ing strong: Al -- le -- lu -- ia! Al -- le -- lu -- ia.
      Through dark -- ness and pain and strife, __ sing, __ Be, __ Live, __ See... __ Peace. Peace.}

      \score {

        \new ChoirStaff <<
          \new Staff <<
            \new Voice = "soprano" <<
              \global
              \sopranonotes
            >>
            \new Lyrics \lyricsto "soprano" \sopranowords

          >>
          \new Staff <<
            \new Voice = "alto" <<
              \global
              \altonotes
            >>
            \new Lyrics \lyricsto "alto" \altowords
          >>
          \new Staff <<
            \new Voice = "tenor" <<
              \global
              \tenornotes
            >>
            \new Lyrics \lyricsto "tenor" \tenorwords
          >>
          \new Staff <<
            \new Voice = "bass" <<
              \global
              \bassnotes
            >>
            \new Lyrics \lyricsto "bass" \basswords
          >>
        >>
        %\midi {}
      }
