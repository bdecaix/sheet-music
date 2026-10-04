\version "2.24.4"

\paper {

  system-system-spacing.basic-distance = #30
  %annotate-spacing = ##t
}

\language "italiano"

\header {
  title = "Jesu! Rex Admirabilis"
  composer = "Giovanni Pierre da Palestrina"
  tagline = ##f
}

global = {
  \key do \major
  \time 4/4
  \autoBeamOff
}

italique= \override LyricText.#'font-shape = #'italic
normal = \revert LyricText.#'font-shape

versetOne = \lyricmode {
  Je -- su! Rex ad -- mi -- ra -- bi -- lis et tri -- um -- pha -- tor no -- bi --lis
  dul -- ce -- do i -- nef -- fa -- bi -- lis, __
  to -- tus de -- si -- de -- ra -- bi -- lis, to -- tus de -- si -- de -- ra __ bi -- lis
}

versetTwo = \lyricmode {
  Ma -- ne no -- bis -- cum Do -- mi -- ne
  Et nos il -- lus -- tra lu -- mi -- ne
  Pul -- sa men -- tis ca -- li -- gi -- ne
  Mun -- dum re -- ple dul -- ce -- di -- ne,
  mun -- dum re -- ple dul -- ce __ di -- ne

}


soprano = \relative do''{
  la2^\mf la4 sol^\< do si la4. la8 \! la4 \breathe fa mi la sol^\> fa mi4. mi8\! mi2 r2 la^\p si^\< si\! do4 la sol4.^\> sol8\! sol2~sol r4 do^\mf do si la4.^\> la8 la4 sol fa\! \breathe fa fa mi re4. re8 re4 dod^\p re2\fermata \bar "|."
}

alto = \relative do'{
  fa2^\mf mi4 re^\< mi mi fa4. fa8\! fa4 \breathe la sol fa mi^\> re dod4. dod8\! dod2 r2 mi sold^\< sold\! la4 fa mi4.^\> mi8\! mi4 \breathe mi^\mf mi re mi4. mi8 mi4 mi fa2 r2 la la4^\> sol fa4. fa8 fa4\! mi^\p re2\fermata
}

basse = \relative do' {
  re2^\mf do4 si^\< la sol fa4. fa8\! fa4 \breathe fa do' fa, sol^\> sol la4. la8\! la2 r2 la mi^\< mi\! la4 la do4.^\> do,8\! do4 \breathe do'^\mf do si la4. la8 la4 sol fa fa fa^\> mi re2 do\! re8 ([mi fa sol] la4.) la8^\p re,2\fermata

}

\score {
  \layout {
    indent = 0
    #(layout-set-staff-size 22)
    %#(layout-set-staff-size 24)
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

    \new Staff = alto \with {
      midiInstrument = "choir aahs"
    }
    <<
      \new Voice = "altos" {
        % \voiceTwo
        \global \alto
      }
    >>
    \addlyrics \versetOne
    \addlyrics \versetTwo

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

    %\context Lyrics = sopranos \lyricsto sopranos \versetOne
    %\context Lyrics = altos \lyricsto altos \verset_alto
    %\context Lyrics = basse \lyricsto basse \versetOne


  >>
  \midi {}
}
