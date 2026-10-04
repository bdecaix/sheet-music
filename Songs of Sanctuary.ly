\version "2.24.4"

\language "italiano"

\header {
  title = "Songs of Sanctuary"
  subtitle = "1. Adiemus"
  composer = "KARL JENKINS"
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
    \RemoveAllEmptyStaves
%    \consists Grid_point_engraver %% active les guides
%    gridInterval = #(ly:make-moment 3/8)
  }
  \context {
    \Score
%    \consists Grid_line_span_engraver
     %% centre les lignes guides horizontalement sous les notes
  }
  \context {
    \Voice
    \override TextScript.padding = #10
    \override Glissando.thickness = #3
  }
}

global = {
  \time 3/4
  \key do \major
  \tempo 4=76
}

sopranonotesOne = \relative do' { \voiceOne \override MultiMeasureRest.staff-position = #0
                                  \override Rest.staff-position = #0
   R2.*17
   r4 r8 la'16 la fad8 si16 la~la4 r4 r4 \bar "||" R2.
   r4 r8 do16 do la8 re16 do~do4 r4 r4 R2.


}

sopranowordsOne = \lyricmode {
  a -- ya -- coo -- ah -- eh__
  a -- ya -- coo -- ah -- eh__
}


sopranonotesTwo = \relative do' { \voiceTwo
                                  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
   la2^\pp (re4 mi sol2 la sol4 do, mi2)
   \bar ".|:" \mark \default
   re16 re re re re8 [re] do do re16 re re re re8 re fa4 mi16 mi mi8 mi [mi] do do re8. re16 re2 \bar "||" \mark \default
   fad16 fad fad fad fad8 [fad] la la mi16 mi mi mi mi8 [mi] sol sol re16 re re re re8 [re] fad fad dod8. dod16 dod2 \bar ":|."
   \mark \default mi16 mi mi mi mi8 [mi] fad fad sol16 sol sol sol sol8 sol la4
   si16 si si si si8 [si] do do si8. la16 sol2 sol16 sol sol sol sol8 [sol] mi sol la8. re,16 re2~ re2. \bar "||" \mark \default
   sib'16 sib sib sib sib8 [sib] sol sib do8. fa,16 fa2 sol8. sol16 mi8 la sol4 sol8. sol16 mi8 la sol4 \bar "||"


}

sopranowordsTwo = \lyricmode {
  a __
  a -- ri -- a -- di -- a -- mus la -- te a -- ri -- a -- di -- a -- mus -- da a -- ri -- a na -- tus la -- te a -- du -- a
  A -- ra -- va -- re tu -- e va -- te a -- ra -- va -- re tu -- e va -- te a -- ra -- va -- re tu -- e va -- te la -- te -- a
  A -- na -- ma -- na coo -- le ra -- we a -- na -- ma -- na coo -- le ra
  a -- na -- ma -- na coo -- le ra -- we a -- ka -- la 
  a -- na -- ma -- na coo -- le ra -- we a -- ka -- la
  a -- na -- ma -- na coo -- le ra -- we a -- ka -- la
  a -- ya doo a -- ye a -- ya doo a -- ye
  



}

altonotes = \relative do' { \voiceThree \stemUp \override MultiMeasureRest.staff-position = #0
  R2.*8 re16 re re re re8 [re] re dod do16 do do do do8 [do] do si si16 si si si si8 [si] si lad la8. la16 la2 \bar ":|."
  <do sol>16 <do sol> <do sol> <do sol> <do sol>8 [<do sol>] <do la>8 <do la> <mi si>16 <mi si> <mi si> <mi si> <mi si>8 <mi si> <fad re>4
  <sol re>16 <sol re> <sol re> <sol re> <sol re>8 [<sol re>] <sol mi> <sol mi> <sol re>8. <sol do,>16 <re si>2
  <mi si>16 <mi si> <mi si> <mi si> <mi si>8 [<mi si>] <si sol> <mi si> <fad re>8. <la, fad>16 <la fad>2~ <la fad>2.
  <sol' re>16 <sol re> <sol re> <sol re> <sol re>8 [<sol re>] <re sib> <sol re> <la fa>8. <do, la>16 <do la>2
  <mi do>8. <mi do>16 <do sol>8 <mi do> <mi do>4 <mi do>8. <mi do>16 <do sol>8 <mi do> <mi do>4

}
altowords = \lyricmode {
A -- ra -- va -- re tu -- e va -- te a -- ra -- va -- re tu -- e va -- te a -- ra -- va -- re tu -- e va -- te la -- te -- a
  A -- na -- ma -- na coo -- le ra -- we a -- na -- ma -- na coo -- le ra
  a -- na -- ma -- na coo -- le ra -- we a -- ka -- la 
  a -- na -- ma -- na coo -- le ra -- we a -- ka -- la
  a -- na -- ma -- na coo -- le ra -- we a -- ka -- la
  a -- ya doo a -- ye a -- ya doo a -- ye}


\score {
  \bookOutputName "Songs of Sanctuary"
  
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano1" <<
        \global
        \sopranonotesOne
      >>
      \new Voice = "soprano2" <<
        \global
        \sopranonotesTwo
      >>
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
            \new Voice = "soprano1" <<
        \global
        \sopranonotesOne
      >>
      \new Lyrics \lyricsto "soprano1" \sopranowordsOne
    >>
    \new Staff <<
      \new Voice = "soprano2" <<
        \global
        \sopranonotesTwo
      >>
       \new Lyrics \lyricsto "soprano2" \sopranowordsTwo
       
    >>
    
    \new Staff <<
     \new Voice = "alto" <<
        \global
        \altonotes
      >>
      \new Lyrics \lyricsto "alto" \altowords
    >>
  >>

}
\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" <<
        \global
        \sopranonotesTwo
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
