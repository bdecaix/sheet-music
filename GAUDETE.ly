\version "2.24.4"

\language "italiano"

\header {
  title = "GAUDETE"
}

global = {
  \time 2/4
  \key sol \major
  \tempo 4=136
}

soprano = \relative do'' {
  \global
  R2 R2 \time 3/8 R1*3/8 R1*3/8 \time 2/4 R2 R2 \time 3/8 R1*3/8 R1*3/8 \section \break \time 2/4 la4 la sol la8 si \time 3/8 do4 do8 si4 la8 sol4 sol sol la si4. la8 \time 3/8 sol4 la8 si4 la8 \time 3/4 sol4 la r4
  \time 2/4 la4 la sol la8 si \time 3/8 do4 do8 si4 la8 \time 2/4 sol4 sol sol la si4. la8 \time 3/8 sol4 la8 si4 la8 \time 3/4 sol4 la r4 \section \break
  \time 2/4 la8 la sol la do si la4 la8 fa mi fa re4 re re8 re fa re fa sol la4 do8 la si do dod4 dod \section \break
  la8 la si la do si la4 la8 fa mi fa re4 re re8 re fa re fa sol la4 do8 la si do dod4 do \section \break
  \key do \major re re do re8 mi \time 3/8 fa4 fa8 mi4 re8 \time 2/4 do4 do do re mi4. re8 \time 3/8 do4 re8 mi4 re8 \time 3/4 do4 re r4 \time 2/4 re re do re8 mi \time 3/8 fa4 fa8 mi4 re8 \time 2/4 do4 do do re mi4. re8 \time 3/8 do4 re8 mi4 re8 \time 3/4 do4 re2 R2. \fine
  
  
}

alto = \relative do' {
  \global
  s2 s2 \time 3/8 s1*3/8 s1*3/8 \time 2/4 s2 s2 \time 3/8 s1*3/8 s1*3/8 \time 2/4 
  
}

tenor = \relative do' {
  \global
  mi8 mi mi r8 R2 \time 3/8 mi8 mi mi sol sol fad \time 2/4 mi8 mi mi r8 R2 \time 3/8 mi8 mi mi sol sol fad \section \break
  \time 2/4 mi8 mi mi r8 R2 \time 3/8 mi8 mi mi sol sol fad \time 2/4 mi8 mi mi r8 R2 mi8 mi mi r8 \time 3/8 mi8 mi mi sol sol fad \time 3/4 mi [mi] mi r8 r4
  \time 2/4 mi8 mi mi r8 R2 \time 3/8 mi8 mi mi sol sol fad \time 2/4 mi8 mi mi r8 R2 mi8 mi mi r8 \time 3/8 mi8 mi mi sol sol fad \time 3/4 mi [mi] mi r8 r4 \section \break
  \time 2/4 do8 do do do re re re4 mi8 mi mi mi sol4 sol si,8 si si si do do do4 re8 re re re mi4 mi \section \break
  \key do \major fa fa mi fad8 sol \time 3/8 la4 la8 sol4 fad8 \time 2/4 mi4 mi mi fa sol4. fa8
  \time 3/8 mi4 fa8 sol4 fa8 \time 3/4 mi fa r4 \time 2/4 fa4 fa mi fa8 sol \time 3/8 la4 la8 sol4 fa8 \time 2/4 mi4 mi mi fa sol4. fa8 \time 3/8 mi4 fa8 sol4 fa8 \time 3/4 mi4 fad2 R2 \fine
  
}

bass = \relative do' {
  \global
  la8 la la r8 R2 \time 3/8 la8 la la do do si \time 2/4 la8 la la r8 R2 \time 3/8 la8 la la do do si \bar "|"
  \time 2/4 la8 la la r8 R2 \time 3/8 la8 la la do do si \time 2/4 la8 la la r8 R2 la8 la la r8 \time 3/8 la8 la la do do si \time 3/4 la [la] la r8 r4
  \time 2/4 la8 la la r8 R2 \time 3/8 la8 la la do do si \time 2/4 la8 la la r8 R2 la8 la la r8 \time 3/8 la8 la la do do si \time 3/4 la [la] la r8 r4 \section \break

  
}

sopraneword = \lyricmode {
  \set stanza = "1."
  Gau -- de -- te, gau -- de -- te, Chris -- tus est na -- tus Ex Ma -- ri -- a Vir -- gi -- ne, gau -- de -- te!
  Gau -- de -- te, gau -- de -- te, Chris -- tus est na -- tus Ex Ma -- ri -- a Vir -- gi -- ne, gau -- de -- te!
  Er -- go no -- stra con -- ti -- o Pasl -- lat iam in lu -- stro; Be -- ne -- di -- cat Do -- mi -- no: Sa -- lus Re -- gi -- no -- stro.
  Gau -- de -- te, gau -- de -- te, Chris -- tus est na -- tus Ex Ma -- ri -- a Vir -- gi -- ne, gau -- de -- te!
  Gau -- de -- te, gau -- de -- te, Chris -- tus est na -- tus Ex Ma -- ri -- a Vir -- gi -- ne, gau -- de -- te!
}

tenorword = \lyricmode {
  \set stanza = "1."
  Gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te
  gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te
  gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te, gau -- de -- te
  gau -- de -- te! Er -- go no -- stra con -- ti -- o Pasl -- lat iam in lu -- stro; Be -- ne -- di -- cat Do -- mi -- no: Sa -- lus Re -- gi -- no -- stro.
  Gau -- de -- te, gau -- de -- te, Chris -- tus est na -- tus Ex Ma -- ri -- a Vir -- gi -- ne, gau -- de -- te!
  Gau -- de -- te, gau -- de -- te, Chris -- tus est na -- tus Ex Ma -- ri -- a Vir -- gi -- ne, gau -- de -- te! 
}


verseTwo = \lyricmode {
  \set stanza = "2."
  ha
  
}

verseThree = \lyricmode {
  \set stanza = "3."
  ho
  
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "soprano" \sopraneword

    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \key sol \major
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    } \lyricsto "tenor" \tenorword
  >>
  \layout { }
  \midi { }
}
