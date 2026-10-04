\version "2.24.4"

\language "italiano"

\header {
  title = "IN DULCI JUBILO"
  subtitle = ""
  composer = "REGINALD JACQUES"
  %poet = ""
  tagline = ##f
}

\paper {
  %annotate-spacing = ##t %Affichage des distances
  system-system-spacing = #'((basic-distance . 15) (padding . 10))
  %system-system-spacing.basic-distance = #0
  top-margin = 3
  line-width = 200
  
  score-system-spacing =
    #'((padding . 1)
       (basic-distance . 100)
       (minimum-distance . 10)
       (stretchability . 12))
  
}


\layout {
  indent = 0\cm
  #(layout-set-staff-size 18)
%  #(set-global-staff-size 10)
%  \context {
%    \StaffGroup
%    \override StaffGrouper.staff-staff-spacing.basic-distance = #100
%  }
  \context {
    \Staff
%    \RemoveAllEmptyStaves
%    \consists Grid_point_engraver %% active les guides
%    gridInterval = #(ly:make-moment 3/8)
  }
  \context {
    \Score
%    \consists Grid_line_span_engraver
     %% centre les lignes guides horizontalement sous les notes
  }
%  \context {
%    \Voice
%    \override TextScript.padding = #1
%    \override Glissando.thickness = #3
%  }
}

global = {
  \time 3/2
  \key fa \major
  \tempo 2=150
}

sopranonotes = \relative do' { \voiceOne \bar ".|:" \partial 2
  fa2 fa1 fa2 la1 sib2 do1 (re2 do1)
  do2 fa,1 fa2 la1 sib2 do1 (re2 do1.\fermata)
  do1 re2 do1 sib2 la1. (fa1) fa2 sol1 sol2 la1 sol2 fa1 sol2 la1
  la2 do1 (re2) do1 sib2 la1. fa1 fa2 sol1 sol2 la1 sol2 fa1 sol2 la1.
  re,1 re2 mi1 mi2 fa1. do' la1 sib2 sol1 sol2 fa1\fermata \bar ":|."


}

sopranowords = \lyricmode {
  



}

altonotes = \relative do' { \voiceTwo \bar ".|:" \partial 2
  do2 re1 do2 fa2. (mi4) re2 do1 (fa2 mi1)
  fa2 re1 do2 fa2. (mi4) re2 do1 (fa2 mi1.^\fermata)
  fa1 fa2 mi1 sol2 do,1. (fa1) fa2 fa1 fa2 fa1 mi2 fa1.~ fa1
  fa2 fa1 fa2 mi1 sol2 do,1. fa1 fa2 fa1 fa2 fa1 mi2 fa1.~ fa
  re1 re2 re1 dod2 re1. (mi) <fa do>1 fa2 fa1 mi2 fa1^\fermata \bar ":|."
  

}
altowords = \lyricmode { }

tenornotes = \relative do'{ \voiceOne
    \clef "treble_8" \bar ".|:" \partial 2
    la2 sib1 la2 do1 re2 la1 (sib2 sol1)
    la2 sib1 la2 do1 re2 la1 (sib2 sol1.\fermata)
    do1 sib2 sol1 mi2 fa1. (la1) la2 re1 re2 do2. (re4) sib2 la1 sib2 do1
    re2 do1 sib2 sol1 mi2 fa1. (la1) la2 re1 re2 do2. (re4) sib2 la1 sib2 do1.
    <re la>1 <la fa>2 sol1 sol2 la1 sib2 sol1. fa1 sib2 re1 do2 la1^\fermata \bar ":|."
}
tenorwords = \lyricmode {

}
bassnotes = { \voiceTwo
  \clef bass \bar ".|:" \partial 2
  fa2 fa1 fa2 fa1 fa2 fa1.~ fa1
  fa2 fa1 fa2 fa1 fa2 fa1. (do^\fermata)
  la,1 sib,2 do1 do2 fa1. (re1) re2 sib,1 sib,2 do1 do2 fa1.~ fa1
  re2 la,1 sib,2 do1 do2 fa1. (re1) re2 sib,1 sib,2 do1 do2 fa1.~ fa
  fa1 fa2 mi1 mi2 re1. (do) fa1 re2 sib,1 do2 <fa fa,>1^\fermata \bar ":|."
  
}
basswords = \lyricmode {

}

\score {
%  \bookOutputName "IN DULCI JUBILO"
  
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
    >>


    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
    >>
  >>
  \midi {}
}

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

}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotes
      >>
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "alto" <<
        \global
        \altonotes
      >>
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "tenor" <<
        \global
        \tenornotes
      >>
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "bass" <<
        \global
        \bassnotes
      >>
    >>
  >>
  \midi {}
}
