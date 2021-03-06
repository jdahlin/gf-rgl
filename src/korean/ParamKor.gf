resource ParamKor = ParamX, Hangul ** open Prelude in {

--------------------------------------------------------------------------------
-- Phonology

-- Patterns and replacements defined in Hangul.gf
oper

  vowFinal : Str -> Bool = \str ->
    case str of {_ + #v => True ; _ => False} ;

--------------------------------------------------------------------------------
-- Morphophonology



--------------------------------------------------------------------------------
-- Nouns

param
  NForm =
      Bare     -- no case particle
    | Topic    -- 은 or 는
    | Subject  -- 이 or 가
    | Object   -- 을 or 를
    ;

  Phono = Vowel | Consonant ; -- Whether the word ends in vowel or consonant.

oper

  allomorph : NForm -> Str -> Str = \nf,s ->
    let finalV : Bool = vowFinal s ;
    in case nf of {
         Topic   => if_then_Str finalV "는" "은" ;
         Subject => if_then_Str finalV "가" "이" ;
         Object  => if_then_Str finalV "를" "을" ;
         Bare    => []
      } ;
--------------------------------------------------------------------------------
-- Numerals

param
  DForm = Indep | Attrib ;

  CardOrd = NOrd | NCard ;

  NumType = NoNum | IsDig | IsNum ;

  NumOrigin = SK | NK ;

oper
  isNum : {numtype : NumType} -> Bool = \nt -> case nt.numtype of {
    NoNum => False ;
    _     => True
    } ;
--------------------------------------------------------------------------------
-- Adjectives

param
  AForm =
      AAttr
    | APred VForm ;

--------------------------------------------------------------------------------
-- Conjunctions

param

  ConjType = And | Or ;

  POS =
     VStar   -- Verbs and adjectives
   | NStar ; -- Nouns and adverbs

oper
  conjTable : POS => ConjType => Str = \\p,c => case <c,p> of {
    <And,VStar> => "고" ;
    <And,NStar> => "하고" ;
    <Or,VStar> => "??" ;
    <Or,NStar> => "또는"
  } ;

--------------------------------------------------------------------------------
-- Verbs
param

  Aspect =
      Generic      -- zero morpheme
    | Habitual     -- 는
    | Prospective  -- 겠
    | Perfect      -- 었/았
    ;

  Style =
      Formal  -- 하십시오체
    | Polite  -- 해요체
    | Plain   --   해 라체
    ;

  SentenceType =
      Declarative
    | Interrogative
    | Imperative
    | Propositive ;


  -- TODO: include Aspect and SentenceType.
  -- These are all Generic and Declarative.
  -- TODO: read about infinitive in (Martin 1992, p. 251)
  VForm =
      VStem -- for adding conjunctions
    | VF Style Polarity ;

oper
  linVF = VF Polite Pos ;

--------------------------------------------------------------------------------
-- Clauses

param

  ClType =
      Statement
    -- | PolarQuestion
    -- | WhQuestion
    | Subord ;

}
