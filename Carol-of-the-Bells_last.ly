\version "2.24.4"

\language "italiano"

\header {
  title = "Carol of the Bells"
  subtitle = "(Ukranian Christmas Carol)"
  %composer = ""
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

global = {
  \time 3/4
  \key sol \minor
  %\tempo 4=180
}

sopranonotes = \relative do' { 
  sib'4--^\pp la8-. sib-. sol4-. sib4-- la8-. sib-. sol4-. sib4-- la8-. sib-. sol4-. sib4-- la8-. sib-. sol4-. \bar ".|:" sib4-- la8-. sib-. sol4-.
  sib4-- la8-. sib-. sol4-. sib4^{sim} la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4 sib4 la8 sib sol4
  sib4 la8 sib sol4 sib4 la8 sib sol4 sib4^\mf^\< la8 sib sol4\! sib4 la8 sib sol4 sib4^\f la8 sib sol4
  sib la8 sib sol4 re' do8\< re sib4 re do8 re sib4\! re do8 re sib4 re do8 re sib4 sol'^\ff sol8 [sol] fa8 (mib) re4 re8 [re] do (sib) do4 do8 [do] re (do) sib4 la8 sib sol4
  re8^\mf [mi] fad\< [sol] la sib do re\! do4 sib re,8\< [mi] fad\< [sol] la\! sib do re do4 sib sib^\p la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 
  
  sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib^\mf^\< la8 sib sol4\! sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4
  re' do8 re sib4 re do8 re sib4 re do8 re sib4 re do8 re sib4 sol' sol8 sol fa8 (mib) re4 re8 re do (sib) do4 do8 do re (do) sib4 la8 sib sol4
  re8 mi fad sol la sib do re do4 sib re,8 mi fad sol la sib do re do4 sib sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 sib la8 sib sol4 
  sol2. (sol) (sol) (sol) (sol) \fine

}

sopranowords = \lyricmode {
  Hark! how the bells,
  sweet si -- lver bells
  All seem to say,
  throw cares a -- way.
  Christ --  mas is here,
  Bring ing good cheer
  To young and old,
  meek and the bold
  Ding dong, ding, dong,
  that is their song, 
  With joy --  ful ring,
  all car -- ol -- ing
  One seems to hear,
  words of good cheer
  From ev -- 'ry where
fill -- ing the air
Oh, how they pound,
Rai -- sing the sound,
O'er hill and dale,
tell -- ing their taile,
Gai -- y they ring
While peo -- ple sing
songs of good cheer
Christ -- mas is here
Mer -- ry, mer -- ry, mer -- ry, 
Mer -- ry Christ -- mas
Mer -- ry, mer -- ry, mer -- ry, 
Mer -- ry Christ -- mas
On, on they send,
on with -- out end,
Their joy -- ful tone
To ev -- ery home
Hark! are the bells,
  Sweet si -- lver bells
  All seem to say,
  Throw cares a -- way
%  Christ --  mas is here,
%  Bring ing good cheeer
%  To young and old,
%  Meek and the bold
%  Ding dong -- y dong,
%  That is their song 
%  With joy --  ful ring,
%  All car -- ol -- ing
%  One seems to hear,
%  Words of good cheer
%  From eve -- ry where
%Fill -- ing the air
%O how they pound,
%Rai -- sing the sound,
%O'er Here and There,
%Tell -- ing their taile,
%Gai -- y they ring
%While peo -- ple sing
%Songs of good cheer
%Christ -- mas is here
%Mer -- ry, mer -- ry, mer -- ry, 
%Mer -- ry Christ -- mas
%Mer -- ry, mer -- ry, mer -- ry, 
%Mer -- ry Christ -- mas
%Come, on they send
%On with -- out end
%Their joy -- ful tone
%To ev -- ery home
%Dong
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


  >>
  %\midi {}
}