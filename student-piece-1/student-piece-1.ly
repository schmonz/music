\version "2.16.0"
\include "english.ly"
#(set-default-paper-size "letter")

#(ly:set-option 'point-and-click #f)

\header {
	title = "Student-piece #1 (draft score)"
	subtitle = "2007/12/05"
	composer = "Amitai Schlair"
	tagline = "" % squelch the LilyPond default
	instrument = "piano"
}

upper = \relative c' {
	\clef treble
	\override Staff.TimeSignature #'style = #'()
	\time 4/4
	\key b \minor
	\tempo 4 = 56
	
	% intro and theme 1
	r16 d b'-- d, r^\markup {"singing"} b fs'-- b, r b d-- b r e-- <fs-- cs> b, |
	r16 d b'-- d, d'-- d, cs'-- d, a'-- e g-- a-- b-- d, a'-- d, |
	fs16-- d b' d, r b fs' b, r b d b r e <fs as,> cs |
	b16 d <fs b> d <g d'> d <gs cs> cs, <fs a> cs <d gs> a' <fs b> d <es a> b |
	<a cs fs>8 <d fs b>16[-. r <a cs fs>-. r <b d>-. e-. <a, cs fs>8] <gs' b>16[ cs d a cs es,] |
	<cs fs a>8 <d fs b>16[-. r <a cs fs>-. r <g d'>-. <gs e'>-. <a cs fs>8] <e' g>16[ a b e, a b,] |
	<as fs'>8] <b' e g b>[ <fs b d fs> <d fs b d>16 <e e'> <fs cs' e fs>8] <b d fs b>16[ <cs cs'> <d fs a d>8 <cs fs a cs>] |
	<a c fs a>16-> r \clef bass \stemUp <d,, fs>8_\markup{"slower, with humor"} <c e> <b ds> <c e>-- <fs a> <e g>_\markup{"accelerating"} <ds fs> \stemNeutral |
	<e g>8 <a c>_\markup{"back in tempo"} <a b> <g b> c4^\markup{"singing"}\( b |
	g4 fs8 g a4 g4\) |
	
	% theme 2
	\mark \default
	\clef treble
	\set tupletSpannerDuration = #(ly:make-moment 1 8)
	\times 2/3 {r16 b'[ e] g[-- b, e] fs[-- as, ds] f[-- af, c] e[-- g, b] e[ g, b] e[ g, b] ds[-- fs,! b] |
	e16[-- g, b] g'[-- b, e] fs[-- as, ds] f[-- af, c] e[-- c e]} << { \stemDown \times 2/3 {c'[ e, c} \times 2/3 {ef c ef]} \times 2/3 {b'[ ef, c]} } \\ { \stemUp c'4 b8~} >> |
	<< { \stemDown \times 2/3 {e,?16[ c e]} \times 2/3 {c'[ e, c} \times 2/3 {ef c ef]} \times 2/3 {b'[ ef, c} \times 2/3 {e c e]} \times 2/3 {c'[ e, c} \times 2/3 {f c f]} \times 2/3 {c'[ f, c]} } \\ { \stemUp b'8 c4 b c c8~ } >> |
	<< { \stemDown \times 2/3 {fs,16 c fs c' fs, c fs c fs c fs r} } \\ { \stemUp c'8]\arpeggio c[~-> c16 b c cs] } >> \ottava #1 d4~ d16 fs, b c |
	cs? e d8~ d16 cs d ds e4~_\markup{"secretly agitated"} e16 gs, cs d |
	ds fs e8~ e16 cs d e g fs d e es fs d e |
	fs g a as b a g fs f e~ e8 d16 cs~ cs8 |
	<c, e c'>16-. <b e b'>-. \ottava #0 r8 \clef bass <e,, g c>16-._\markup{"decelerating"} <e g b>-. r8 <g, c>-. <g b>-- r4\fermata |
	
	% fugato
	\mark \default
	\once \override Score.MetronomeMark #'transparent = ##t
	\tempo 4 = 80
	\set followVoice = ##t
	r8^\markup{"fugato"} e'_\markup{"faster (enough to flow)"} c d fs g16 fs e8 fs |
	a b16 a gs8 a c4 b |
	g fs8 g a4 g |
	e8 a c b g fs16 g a8 g |
	e_\markup{"and decelerating"} a e c16 d e8 a c b |
	g4_\markup{"back in tempo"} fs8 f e4 b' |
	fs d8. e16 fs8 b d cs |
	a gs16 a b8 a fs b_\markup{"decelerating"} fs d16 e |
	<cs fs>4 << { \stemDown e8 cs~ cs4 cs\fermata } \\ { \stemUp a'4 gs e8\noBeam \change Staff=lower ds16 e } >> |

	% Tempo I
	\mark \default
	\once \override Score.MetronomeMark #'transparent = ##t
	\tempo 4 = 56
	\clef treble
	\times 2/3 { r16^\markup{"Tempo I"} a cs fs cs a r a cs fs cs a r a cs fs cs a r gs cs es cs gs |
	r a cs fs cs a r b d fs d b r gs b e b gs r a d e d gs, |
	r a cs fs cs a r a cs fs cs a r a cs fs cs a r gs cs es cs gs |
	r a cs fs cs a r b d fs d b r gs b e b gs r a d fs-- d a |
	b'-- fs d fs-- d b r d fs } d-- e-- \times 2/3 { fs-- a, cs fs a, cs fs a, cs fs a, cs |
	r d fs b-- fs d d'-- b fs cs'-- a cs, a'-- fs d } gs-- a-- \times 2/3 { b-- fs d a'-- fs cs |
	fs-- d b b'-- fs d fs-- d b } d-- e-- \times 2/3 { fs-- a, cs fs a, cs fs a, cs fs a, cs |
	r d fs b-- fs d d'-- b fs cs'-- b f a-- f b, } g'-- a-- \times 2/3 { b-- f d } a'8-- |
	\times 2/3 { fs16-- d b b'-- fs d fs-- d b } d-- e-- << { \stemDown fs-- b,_\markup{"decelerating"} d cs as gs32 as cs16.-- b32 } \\ { \stemUp fs'4. e8 } >> |

	% theme 1 again
	\mark \default
	r16_\markup{"back in tempo"} d b' d, r b fs' b, r b d b r e <fs cs> b, |
	r16 d b' d, d' d, cs' d, a' e g a b d, a' d, |
	fs16 d b' d, r b fs' b, r b d b r e <fs as,> cs |
	b16 d <fs b> d <g d'> d <gs cs> cs, <fs a> cs <d gs> a' <cs, b'> g' <c, a'> fs |
	<b, g'> d b' d, fs d b' fs d gs, b d_\markup{"decelerating"} e b cs <as fs'> |
	b fs d' b fs' d b' fs d' b fs d \clef bass b fs d8 |
	e <d fs>~ <d fs>2.\fermata |
	
	\bar "|."
}

dynamics = {
	s1\mp |
	s1 |
	s1 |
	s1 |
	s8 s2\mf s2\p s2\mf s2\p s2.\< s8 |
	s1\sfp |
	s1 |
	s1 |
	s1 |
	s1 |
	s2 s2\< |
	s4\! s4 s2\pp |
	s1 |
	s2. s4\< |
	s2 s4.\f\> s8\mf\< |
	s1\ff |
	s1\mf |
	s1 |
	s1 |
	s1 |
	s1\< |
	s2.\! s4\p |
	s2. s4\< |
	s2.\mf\< s4\f |
	s1 |
	
	% Tempo I
	s1\mp |
	s1 |
	s1 |
	s4 s2.\< |
	s1\! |
	s1 |
	s1 |
	s4 s4.\> s4\! s8\> |
	s1\mp |
	
	% theme 1 again
	s1 |
	s1 |
	s1 |
	s2. s4\> |
	s4\! s2. |
	s1\p |
	s1 |
}

lower = \relative c {
	\clef bass
	\override Staff.TimeSignature #'style = #'()
	\time 4/4
	\key b \minor
	\tempo 4 = 56
	
	% intro and theme 1
	b8 fs' d fs fs, fs' fs, fs' |
	b,8 fs' e g cs, a' b, e |
	b8 fs' d fs fs, fs'_\markup {"with pedal"} fs, fs' |
	b,8 d e es fs b, gs cs |
	fs,8] b16[-. fs'-. a,-. fs'-. gs,-. cs-. <fs, cs'>8] e'16[ es fs8 g16 gs] |
	a8 gs,16[-. fs'-. a,-. fs'-. b,-. bs-. cs8] e,16[ d cs8 cs'] |
	fs,8] g16[ g' gs gs, a a' as as,] b[ b' bs bs, cs cs'] |
	d16-> <a, d> c b g fs32 g a16 g e-- c' e d b a32 b c16 b |
	g16-- e' g fs ds cs32 ds e16 b << { \stemDown g4 a4 } \\ { \stemUp \set tupletSpannerDuration = #(ly:make-moment 1 4) \times 2/3 {e'8 fs e ds e ds} } >> |
	<< { \stemDown b4 c cs ds } \\ { \stemUp \times 2/3 {e8 fs e ds e ds e8 fs e ds b' fs} } >> |
	
	% theme 2
	<< { \stemNeutral e2 } \\ { b'8\rest b c d16 ds } >> e8~ e16 g, a as b8 |
	<< { e,2 } \\ { b'8\rest b c d16 ds } >> e16 \clef treble << { a,4. } \\ { a16 e' a f a f a } >> |
	<< { \stemDown a,2 a4 a } \\ { \stemUp e'16 a e a f a f a e a e a ef a ef a } >> |
	<< { \stemDown a,2\arpeggio } \\ { \stemUp d16 a' d, a' d, a' d, a' } >> \stemNeutral \times 2/3 {r16 b,[ g' d' g, b,]} \times 2/3 {fs'[ b, fs' d' fs, b,]} |
	\times 2/3 {f'[ b, f' d' f, b,]} \times 2/3 {e[ b e gs d' e,]} \times 2/3 {r cs[ a' e' a, cs,]} \times 2/3 {gs'[ cs, gs' e' gs, cs,]} |
	\times 2/3 {g'[ cs, g' e' g, cs,]} \times 2/3 {fs[ cs fs as e' fs,]} \times 2/3 {r d[ fs b d fs,]} \times 2/3 {r cs[ fs as cs fs,]} |
	\times 2/3 {r c[ fs a d fs,]} \times 2/3 {r b,[ fs' a ds fs,]} \times 2/3 {r bf,[ c g' c g]} \clef bass \times 2/3 {c,[ g c, g a as]} |
	<b b'>-. <b g' b>-. r8 \grace { g16[\( a as] } b16-.\) b-. r8 b,-. b-- r4\fermata |

	% fugato
	R1 |
	r2 g''8 fs d c16 d |
	e8 d b e~ e b~ b g16 a |
	as b c8 d ds e a, b c |
	cs fs, gs a as ds, es fs |
	g fs16 g a8 as b b d cs |
	a g16 a b8 a d, ds e es |
	fs b bs cs d cs bs b |
	a e cs ds e4-. gs-.\fermata |

	% Tempo I
	fs'^\markup{"singing"} cs a8. b16 cs4 |
	fs8 fs a gs e d16 e fs8 e |
	<< { \stemDown fs,2 } \\ { \stemUp cs'8 fs cs4 } >> a8. b16 cs4 |
	<< { \stemDown fs,4 } \\ { \stemUp fs8 fs' } >> a gs e d16 e fs8 d |
	b fs'-- b-- \times 2/3 { a16 gs g } fs8-- cs-- a16-- b-- cs8-- |
	gs fs' a, fs' b, fs'16 bs, cs8 \times 2/3 { d16 e es } |
	fs8 b, fs'-- b-- fs-- cs-- a16-- b-- bs-- cs-- |
	b8 as a gs << { g4 g } \\ { g8 d' g, \times 2/3 {d'16 e es} } >> |
	% << { \stemDown fs,2 fs } \\ { \stemUp fs'8 d fs4 d8. e16 fs4 } >> |
	<< { \stemDown fs,2 fs } \\ { \stemUp fs'8[ d fs] b16[ fs d8. e16] fs4 } >> |

	% theme 1 again
	b,8 fs' d fs fs, fs' fs, fs' |
	b,8 fs' e g cs, a' b, e |
	b8 fs' d fs fs, fs' fs, fs' |
	b,8 d e es fs e a, d |
	g,8. a16 b4 e, g8. fs16 |
	b1 |
	<b g>8 <b, fs'>8~ <b fs'>2.\fermata |

	\bar "|."
}

pedal = {
	% withpedal = #(make-dynamic-script "with pedal")
	s8\sustainOn fs' d fs fs, fs' fs,\sustainOff\sustainOn fs' |
	b,8\sustainOff\sustainOn fs' e\sustainOff\sustainOn g cs,\sustainOff\sustainOn a' b,\sustainOff\sustainOn e\sustainOff |
	s2\sustainOn s2\sustainOff
	% s1\withpedal
}

% printed score
% showLastLength = R1*5
\score {
	\new PianoStaff <<
		% \set Score.markFormatter = #format-mark-box-numbers
		\set PianoStaff.connectArpeggios = ##t
		\set PianoStaff.followVoice = ##t
		\new Staff = "upper" \upper
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
		\new Dynamics = "pedal" \pedal
	>>
	\layout {
		% [Convert-ly] The Dynamics context is now included by default.
		\context {
			\PianoStaff
			\accepts Dynamics
			\override VerticalAlignment #'forced-distance = #7
		}
	}
}

% MIDI score
% %{
\score {
	\new PianoStaff <<
		\new Staff = "upper" << \upper \dynamics >>
		\new Staff = "lower" << \lower \dynamics >>
		\new Dynamics = "pedal" \pedal
	>>
	\midi {
		\context {
			\type "Performer_group"
			\name Dynamics
			\consists "Piano_pedal_performer"
		}
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}
% %}
