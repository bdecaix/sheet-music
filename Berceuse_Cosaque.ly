\version "2.24.4"

\paper {

  system-system-spacing.basic-distance = #25
  %annotate-spacing = ##t 
}

\language "italiano"

\header {
  title = "Berceuse cosaque"
  composer = "Lermontov"
  tagline = ##f
}

global = {
  \key sol \major
  \time 3/4
  \autoBeamOff
}

italique= \override LyricText.#'font-shape = #'italic
normal = \revert LyricText.#'font-shape

versetOne = \lyricmode {
  Dou -- ce -- ment s'en dort la ter -- re Dans le soir tom -- bant
  Fer -- me vi -- te tes pau -- piè -- res Dors pet -- tit  en -- fant  
}

versetTwo = \lyricmode {
 \italique Dors en paix près de ta mè -- re Fais des rê -- ves bleus
  Au ma -- tin dans la lu -- miè -- re Tu se -- ras joy -- eux \normal

}

versetThree = \lyricmode {
  Sur ton lit la lu -- ne  po -- se Ses ray -- ons d'ar -- gent
  Quand s'a -- pai -- sent gens et cho -- ses Dors Pet -- it en -- fant
}


verset_alto = \lyricmode {
  Dou -- ce -- ment dort la ter -- re Dans le soir le soir tom -- bant
  Fer -- me vi -- te tes pau -- piè -- res Dors pet -- tit  en -- fant 
}
verset_alto_Two = \lyricmode {
  \italique Dors au -- près de ta mè -- re Fais des rê -- ves rê -- ves bleus
  Au ma -- tin dans la lu -- miè -- re Tu se -- ras joy -- eux \normal
}

soprano = \relative do'{
  mi2 sol4 fad2 si,4 mi2 la4 fad2 si,4 sol'2 sol4 la2 re8 ([do]) si2.~ si2 r4
  \repeat volta 2 { re2 si4 la2 si8 ([la]) sol2 sol4 fad2 si,4 mi4. (fad8) sol ([la]) si2 red,4 mi2.~ mi2 r4} \bar "|."
}

alto = \relative do'{
  r4 si mi mi (red2) r4 si la si si2 r4 si mi mi (re) la' la (sol) fad sol2 r4
  \repeat volta 2 { r4 re sol la re,2 r4 si mi fad si2 r4 la, mi' red (si) la si2. (si2) r4}
}

basse = \relative do {
  mi2 mi4 si2 si4 dod2 dod4 red2 red4 mi2 mi4 fad2 fad4 sol2. (sol2) r4
  \repeat volta 2 {si2 sol4 fad2 fad4 mi2 mi4 re2 re4 do2 do4 si2 si4 mi2.~mi2 r4}

}

\score {
    \layout {
    indent = 0
    #(layout-set-staff-size 14)
    #(layout-set-staff-size 24)
    line-width = 195\mm
 %   ragged-right = #f
 %   ragged-last = ##t
  %      markup-system-spacing = #1
    
  \context {
    \Staff
   \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 5)
         (minimum-distance . 10)
        (padding . 1))
      
    }
  }
  
 % \new ChoirStaff <<
 \new StaffGroup <<
    \new Staff = soprane \with {
      midiInstrument = "choir aahs"
    }
    << 
      \new Voice = "sopranos" {  
        % \voiceOne
        \global \soprano    
      }
    
    >>
    \addlyrics \versetOne
    \addlyrics \versetTwo
    \addlyrics \versetThree
   
    \new Staff = alto \with {
      midiInstrument = "choir aahs"
    }
    <<
      \new Voice = "altos" { 
        % \voiceTwo
        \global \alto 
      }
    >>
    \addlyrics \verset_alto
    \addlyrics \verset_alto_Two
    
    \new Staff = basses \with {
      midiInstrument = "choir aahs"
    }
    <<

      \new Voice = "basse" { 
        << \global \clef F \basse >>
      }
    >>
    %\new Lyrics = bases
    \addlyrics \versetOne
    \addlyrics \versetTwo
    \addlyrics \versetThree
    
    %\context Lyrics = sopranos \lyricsto sopranos \versetOne
    %\context Lyrics = altos \lyricsto altos \verset_alto
    %\context Lyrics = basse \lyricsto basse \versetOne
  
    
  >>
  \midi {}
}
