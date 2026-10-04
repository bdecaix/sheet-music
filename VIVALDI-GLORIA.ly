\version "2.24.4"

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

\language "italiano"

\header {
  title = "GLORIA"
  composer = "VIVALDI"
  tagline = ##f
}

global = {
  \key do \minor
  \autoBeamOff
}

verset = \lyricmode {
  Glo -- ri -- a, glo -- ri -- a glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis De -- o
  in ex -- cel -- sis De -- o
  Glo -- ri -- a, glo -- ri -- a glo -- ri -- a, glo -- ri -- a
  in ex -- cel -- sis De -- o
  Glo -- ri -- a, glo -- ri -- a in ex -- cel -- sis De -- o
  Glo -- ri -- a in ex -- cel -- sis
  Glo -- ri -- a in ex -- cel -- sis De -- o
  Glo -- ri -- a in ex -- cel -- sis De -- o
  in ex -- cel -- sis Glo -- ri -- a in ex -- cel -- sis De -- o.
  
}

soprano = \relative do''{
  \compressEmptyMeasures
  R1*14
  \mark \default
  R1*2 
  r2^\f mib8. mib16 mib4 mib8. mib16 mib4 r2
  r2 re8. re16 re4 re8. re16 re4 r2
  r2 ^\f re2 mib fa mib mib re r2
  \mark \default
  re^\p mib fa mib mib re
  r2 ^\f sib4. sib8 sib2 do4. do8 do2 do4. do8 do2 re4. re8 re2 re re mib do do (si) do
  R1*2
  \mark \default 
  do4.^\mf do8 do2 do4. do8 do2 do^\f do do1 (si sib) (sib) la la (la)
  \mark \default
  la r1
  re4 re8 re re4 re mib2 mib do4 do 8 do do4 do re2 re2 re1 do2 r2
  mib4 mib8 mib mib4 mib re2 mib mib (re)
  \mark \default mib r2 R1*2
  sib4^\mp sib do2~ (do2 sib~ sib lab~ lab1) lab~^\f lab4 r4 r2
  mib'8.^\f mib16 mib4 mib8 mib8 mib8 mib8 re2 mib~^\ff mib1\fermata \bar "|."
}

alto = \relative do''{
  \compressEmptyMeasures
  R1*14
  R1*2 
  r2^\f sol8. sol16 sol4 sol8. sol16 sol4 r2
  r2 fa8. fa16 fa4 fa8. fa16 fa4 r2
  r2 ^\f fa2 sol lab sol fa fa r2
  fa^\p sol lab sol fa fa
  r2^\f mib4. mib8 mib2 mib4. mib8 mib2 fa4. fa8 fa2 fa4. fa8 fa2 sol sol sol sol sol~ sol sol
  R1*2
  sol4.^\mf sol8 sol2 sol4. sol8 sol2 lab^\f lab la1 (sol2 fa mi1~) mi fa mi~ mi fa
  r1
  sol4 sol8 sol sol4 sol sol2 sol fa4 fa8 fa fa4 fa fa2 sib2 sib1 la2 r2
  la4 la8 la la4 la lab2 sol fa~ fa
  sol r2 R1*2
  r2^\mp sol4 sol lab2 (fa sol mib fa1) fa~^\f fa4 r4 r2
  sol8.^\f sol16 sol4 sol8 sol8 sol8 sol8 fa2 sol~^\ff sol1\fermata
}

tenor = \relative do'{
  \compressEmptyMeasures
  R1*14

  R1*2 
  r2^\f sib8. sib16 sib4 sib8. sib16 sib4 r2
  r2 sib8. sib16 sib4 sib8. sib16 sib4 r2
  r2 ^\f re2 sib re sib sib sib r2
  re2^\p sib re sib sib sib
  r2^\f sol4. sol8 sol2 do4. do8 do2 la4. la8 la2 re4. re8 re2 si si do mib re~ re mib
  R1*2
  mib4.^\mf mib8 mib2 mi4. mi8 mi2^\f fa fa fad1 (re do dod) re re (dod) re
  r1
  re4 re8 re fa4 fa mib2 mib mib4 mib8 mib mib4 mib re2 fa2 sol1 do,2 r2
  do4 do8 do do4 fa fa (re) sib2 sib2~ sib sib
  r2 R1*2
  mib2^\mp mib fa1 (mi re) re~^\f re4 r4 r2
  sib8.^\f sib16 sib4 sib8 sib8 sib8 sib8 sib2 sib~^\ff sib1\fermata
}

basse = \relative do {
  \compressEmptyMeasures
  R1*14
  R1*2 
  r2^\f mib8. mib16 mib4 mib8. mib16 mib4 r2
  r2 sib8. sib16 sib4 sib8. sib16 sib4 r2
  r2 ^\f sib'2 sib sib sib sib, sib r2
  sib'^\p sib sib sib sib sib,
  r2^\f mib4. mib8 mib2 lab4. lab8 lab2 fa4. fa8 fa2 sib4. sib8 sib2 sol sol sol sol sol~ sol do,
  R1*2
  do'4.^\mf do8 do2 sib4. sib8 sib2 lab^\f lab re,1 (sol1~) sol~ sol re la'~ la re,
  r1
  si'4 si8 si si4 si do2 do la4 la8 la la4 la sib2 sib2 mi,1 fa2 r2
  fa4 fa8 fa fa4 fa sib,2 mib sib' (sib,) mib r2 R1*2
  r2^\mp mib4 mib re1 (do sib) sib~^\f sib4 r4 r2
  mib8.^\f mib16 mib4 sib8 sib8 sib8 sib8 sib2 mib~^\ff mib1\fermata
}

\score {
    \layout {
      indent = 0
   % #(layout-set-staff-size 20)
   % line-width = 195\mm
 %   ragged-right = #f
 %   ragged-last = ##t
  %      markup-system-spacing = #1
    
 % \context {
 %   \Staff
 %   \override VerticalAxisGroup.default-staff-staff-spacing =
  %    #'((basic-distance . 5)
  %       (minimum-distance . 5)
  %       (padding . 1))
      
   % }
  }
  
 % \new ChoirStaff <<
 \new StaffGroup <<
    \new Staff = soprane \with {
      midiInstrument = "choir aahs"
    }<< 
      \new Voice = "sopranos" {  
        % \voiceOne
        \global \soprano    
      }
    
    >>
    \new Lyrics = sopranos
   
    \new Staff = alto \with {
      midiInstrument = "choir aahs"
    } <<
      \new Voice = "altos" { 
        % \voiceTwo
        \global \alto 
      }
    >>
    \new Lyrics = altos
    \new Staff = tenor \with {
      midiInstrument = "choir aahs"
    }<<

      \new Voice = "tenor" { 
        << \global \clef "treble_8" \tenor >>
      }
    >>
    \new Lyrics = tenor
    \new Staff = basse \with {
      midiInstrument = "choir aahs"
    }<<

      \new Voice = "basse" { 
        << \global \clef F \basse >>
      }
    >>
    \new Lyrics = bases
    \context Lyrics = sopranos \lyricsto sopranos \verset
    \context Lyrics = altos \lyricsto altos \verset
    \context Lyrics = tenor \lyricsto tenor \verset
    \context Lyrics = basse \lyricsto basse \verset
  
    
  >>
  \midi {}
}
