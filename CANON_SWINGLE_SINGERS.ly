\version "2.24.4"

\language "italiano"

\header {
  title = "CANON"
  %subtitle = ""
  composer = "SWINGLE SINGERS"
  %poet = ""
  tagline = ##f
}

\paper {
  system-system-spacing.basic-distance = #0
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



choirwords = \lyricmode {
  Lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou lou
  Dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou dou
  Pa lam pa lam pa lam pa lam pa lam pa lam pa pam pa la lam pam pam pa la pa la pa la pa la pa lam pam pam pa la lam pam Lou
}



\score {
%  \bookOutputName "CANON_SWINGLE_SINGERS"
  <<

    \new Voice = "One" \relative do' {
      
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r8 si' \mark \default \repeat unfold 2 { \bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."
    }}
    \new Voice = "Two" \relative do' {
      
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r4 R2*7 r4 r8 si' \mark \default \repeat unfold 2 {\bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."}
    }
    
    \new Voice = "Three" \relative do' {
      
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r4 R2*15 r4 r8 si' \mark \default \repeat unfold 2 {\bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."}
    }

 >>
 \midi {}
}

\score {
  <<

    \new Voice = "One" \relative do' {
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r8 si' \mark \default \bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."
    }

       \new Lyrics \lyricsto "One" \choirwords
       
       \new Voice = "Two" \relative do' {
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r4 R2*7 r4 r8 si' \mark \default \bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."
    }
    
    \new Voice = "Three" \relative do' {
      
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r4 R2*15 r4 r8 si' \mark \default \repeat unfold 2 {\bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."}
    }

 >>
 

}

\score {
%  \bookOutputName "CANON_SWINGLE_SINGERS_solo"
  <<

    \new Voice = "One" \relative do' {
      
      \time 2/4
  \key sol \major
  \tempo 4=60
  \set breathMarkType = #'tickmark \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
\partial 4 r8 si' \mark \default \repeat unfold 2 { \bar ".|:" do-. la4 re8 si-. sol4 do8 la-. fad4 si8 sol-. mi4 \breathe si'8 do-. do4 do8 si-. mi,4 mi8 la, la si si mi4.-. \breathe \mark \default sol8
sol fad16 mi fad8-. fad fad mi16 red mi8-. \breathe mi mi4 red si'4.-. \breathe si8 si la16 sold la8-. la la sol16 fad sol8-. \breathe sol sol fad16 mi fad sol fad8 mi4.-. \breathe \mark \default sol8 la-. do, re-. fad sol-. si, do \breathe mi fad-. la, si-. fad' fad sol16 fad mi8-. \breathe mi
la,8. la16 la si do re mi fad sol la si8-. \breathe mi, mi red16 dod red4 mi r8 si' \bar ":|."
    }}
 >>
 \midi {}
}
